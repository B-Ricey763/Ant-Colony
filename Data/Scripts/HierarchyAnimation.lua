local root = script.parent
local frameObjects = {}
local basePose = nil
local nodeNames = {}
local ignoreNames = true
local propLooping = script:GetCustomProperty("looping")
local propPlayEvent = script:GetCustomProperty("PlayEvent")
local propAutoPlay = script:GetCustomProperty("AutoPlay")
local QMath = require(script:GetCustomProperty("QMathLib"))
local propIsCubic = script:GetCustomProperty("isCubic")

-- used to store current and next frame transforms
local prevTransforms = {}
local currentTransforms = {}
local nextTransforms = {}
local nextNextTransforms = {}
-- used to interp animation between frames
local currentInterp = 0.0
local interpTime = 2.0
local currentFrame = 0
local nextFrame = 0

-------
-- call a function variable with checks
--
function callChecked(func, params)
    if (func~=nil and type(func)=="function") then
        func(params)
    end
end

-------
-- traverse and apply a callback to each node
--
function TraverseChildren(node, lvl, callback)

    if (node~=nil) then

        -- callback on the given node
        if (callback~=nil and type(callback)=="table") then
            if (callback.params==nil) then
                callback.params = {}
            end
            -- set to pass in current node, hierarchy level and traversal order
            callback.params.current = node
            callback.params.lvl = lvl

            -- set to 0 or increase order of traversal
            if (callback.order==nil) then
                callback.order = 0
            else
                callback.order = callback.order + 1
            end

            -- send order to callback function as well
            callback.params.order = callback.order

            -- call
            callChecked(callback.func, callback.params)
        end

        -- recursively traverse node tree
        local children = node:GetChildren()
        for i,child in ipairs(children) do
            if (nodeNames[child.name]==true or ignoreNames==true) then
                TraverseChildren(child, lvl+1, callback)
            end
        end
    end

end


-------
-- Go through the root and extract numbered folders as frames
--
function initFrames()
    if (root) then
        local folders = root:GetChildren()
        for _,folder in ipairs(folders) do
           if (folder.type=="Folder") then
                local n = tonumber(folder.name)
                local animTime = folder:GetCustomProperty("animTime")
                local animEvent = folder:GetCustomProperty("animEvent")
                if (n~=nil) then
                    frameObjects[n] = {nodes=folder:GetChildren(), animTime=animTime, animEvent=animEvent}
                    -- hide animation frames
                    for _,child in ipairs(frameObjects[n].nodes) do
                        child.visibility = Visibility.FORCE_OFF
                    end
                end

                -- extract base pose
                if (folder.name=="BasePose") then
                    basePose = folder:GetChildren()[1]
                end
           end
        end
    end
end


-------
-- Simple callback to debug node positions
--
function cb_DebugCallback(params)

    -- get local and world transforms
    local node = params.current
    local T = node:GetTransform()
    local TW = node:GetWorldTransform()

    -- debug transform locations
    CoreDebug.DrawSphere(TW:GetPosition() , 50 * TW:GetScale().size, {
        duration = (2 + params.lvl)*0.5,
        color = Color.GREEN
    })

    -- debug traversal order
    UI.ShowFlyUpText(tostring(params.order), TW:GetPosition(), {duration=20})
end


-------
-- call this to extract node names used in animation
--
function initAnimation(frameNum)
    nodeNames = {}
    local extractNodeNames = function(params)
        local node = params.current
        nodeNames[node.name] = true
    end
    ignoreNames = true
    TraverseChildren(frameObjects[frameNum].nodes[1], 0, {func=extractNodeNames})
    ignoreNames = false
end


-------
-- get transforms from a frame pose
--
function getFrameTransforms(frameNum)
    local transforms = {}
    local extractTransforms = function(params)
        local node = params.current
        transforms[params.order+1] = node:GetTransform()
    end
    TraverseChildren(frameObjects[frameNum].nodes[1], 0, {func=extractTransforms})
    return transforms
end

-------
-- get world transforms from a frame pose
--
function getFrameWorldTransforms(frameNum)
    local transforms = {}
    local extractTransforms = function(params)
        local node = params.current
        transforms[params.order+1] = node:GetWorldTransform()
    end
    TraverseChildren(frameObjects[frameNum].nodes[1], 0, {func=extractTransforms})
    return transforms
end

-------
-- callback to apply post transforms on traversal
--
function cb_ApplyPoseTransform(params)
    local node = params.current
    local i = params.order+1
    local T = params.transforms[i]
    node:SetTransform(T)
end

-------
-- callback to apply post transforms on traversal
--
function cb_InterpPoseTransform(params)
    local node = params.current
    local i = params.order+1
    local Tprev = params.prevTransform[i]
    local T1 = params.currentTransform[i]
    local T2 = params.nextTransform[i]
    local Tnext = params.nextNextTransform[i]
    local a = params.alpha

    -- lerp transform
    local T = Transform.New()
    if (propIsCubic) then

        local qprev = Tprev:GetQuaternion()
        local q1 = T1:GetQuaternion()
        local q2 = T2:GetQuaternion()
        local qnext = Tnext:GetQuaternion()

        local qrs = QMath.quadrangles({qprev,q1,q2,qnext})
        local q = QMath.squadFullPath(q1, qrs[1], qrs[2], q2, a)
        q = QMath.normalize(q)

        T = Transform.New(q, Vector3.Lerp(T1:GetPosition(),T2:GetPosition(),a), Vector3.Lerp(T1:GetScale(),T2:GetScale(), a))
    else
        T = Transform.New(Quaternion.Slerp(T1:GetQuaternion(), T2:GetQuaternion(), a), Vector3.Lerp(T1:GetPosition(),T2:GetPosition(),a), Vector3.Lerp(T1:GetScale(),T2:GetScale(), a))
    end

    node:SetTransform(T)
end

-------
-- Set to begin playing an animation
--
function PlayAnimation()

    -- initialize node names
    initAnimation(1)

    -- extract first frame transform
    currentFrame = 1
    nextFrame = 2
    local transforms = getFrameTransforms(currentFrame)
    TraverseChildren(basePose, 0, {func=cb_ApplyPoseTransform, params={transforms=transforms}})

    isPlaying = true
    currentInterp = 0.0
    prevTransforms = transforms
    currentTransforms = transforms
    if (#frameObjects>=nextFrame) then
        nextTransforms = getFrameTransforms(nextFrame)
    end

    -- get the frame transform after the next
    if (#frameObjects-1>=nextFrame) then
        nextNextTransforms = getFrameTransforms(nextFrame+1)
    else
        nextNextTransforms = nextTransforms
    end

    -- trigger animation event
    local animEvent = frameObjects[currentFrame].animEvent
    if (animEvent~=nil) then
        -- broadcast anim event
        Events.Broadcast("animEvent_" .. animEvent)
        Events.BroadcastToServer("animEvent_" .. animEvent)
    end

end


-------
-- Apply a pose from a frame
--
function ApplyFramePose(frameNum)
    -- initialize node names
    initAnimation(1)

    local transforms = getFrameTransforms(frameNum)
    TraverseChildren(basePose, 0, {func=cb_ApplyPoseTransform, params={transforms=transforms}})
end


-------
-- Tick
--
function Tick(dt)
    if (isPlaying) then
        -- time to interpolate to next frame
        interpTime = frameObjects[nextFrame].animTime

        -- when reaching next frame
        currentInterp = currentInterp + dt/interpTime
        if (currentInterp>1.0) then
            currentInterp = 1.0
        end

        local params = {
            prevTransform       = prevTransforms, 
            currentTransform    = currentTransforms, 
            nextTransform       = nextTransforms,
            nextNextTransform   = nextNextTransforms,
            alpha=currentInterp
        }
        TraverseChildren(basePose, 0, {func=cb_InterpPoseTransform, params=params})

        -- progress to next frame
        if (currentInterp==1.0) then
            currentFrame = nextFrame
            nextFrame = currentFrame + 1

            -- trigger animation event
            local animEvent = frameObjects[currentFrame].animEvent
            if (animEvent~=nil) then
                -- broadcast anim event
                Events.Broadcast("animEvent_" .. animEvent)
                Events.BroadcastToServer("animEvent_" .. animEvent)
            end

            -- progress if we have more frames
            if (#frameObjects>=nextFrame) then
                currentInterp = 0.0
                prevTransforms = currentTransforms
                currentTransforms = getFrameTransforms(currentFrame)
                nextTransforms = getFrameTransforms(nextFrame)

                -- get the frame transform after the next
                if (#frameObjects-1>=nextFrame) then
                    nextNextTransforms = getFrameTransforms(nextFrame+1)
                else
                    nextNextTransforms = nextTransforms
                end

            else
                if (propLooping) then
                    PlayAnimation()
                else
                    isPlaying = false
                end
            end
        end
    end
end


function onPlay()
    PlayAnimation()
end
Events.Connect(propPlayEvent, onPlay)


initFrames()
if (propAutoPlay) then
    PlayAnimation()
else
    ApplyFramePose(1)
end