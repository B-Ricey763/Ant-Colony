local propPortalObject = script:GetCustomProperty("PortalObject"):WaitForObject()
local BaseScale = 0.929
local propRows = script:GetCustomProperty("Rows")
local propColumns = script:GetCustomProperty("Columns")
local propFPS = script:GetCustomProperty("FPS")
local propGameID = script:GetCustomProperty("GameID")
local propNumberOfSheets = script:GetCustomProperty("NumberOfSheets")
local propEndFramesOffset = script:GetCustomProperty("EndFramesOffset")
local propStartSheetIndex = script:GetCustomProperty("StartSheetIndex")

local numFrames = (propRows * propColumns * propNumberOfSheets) - propEndFramesOffset
local currFrame = 0
local rowRatio = propRows * BaseScale
local colRatio = propColumns * BaseScale

local UOffset = -0.5 + 0.5/propRows
local VOffset = -0.5 + 0.5/propColumns
local UOffsetBase = UOffset
local VOffsetBase = VOffset

local startSheetIndex = propStartSheetIndex


local function InitPortal(portal)
    portal:SetSmartProperty("U Scale", rowRatio )
    portal:SetSmartProperty("V Scale", colRatio )
    portal:SetSmartProperty("U Offset", UOffset )
    portal:SetSmartProperty("V Offset", VOffset )
    portal:SetSmartProperty("Game ID", propGameID )
end


local function SetPortalSheetIndex(portal, index)
    portal:SetSmartProperty("Screenshot Index", index)
end


InitPortal(propPortalObject)
SetPortalSheetIndex(propPortalObject, startSheetIndex)


local play = nil
play = function()
    Task.Wait(1/propFPS)

    local rowXcol = propRows * propColumns
    local frame = math.fmod(currFrame, rowXcol)
    local row = math.fmod(frame, propRows)
    local col = math.floor(frame/propRows)
    local sheet = math.floor(currFrame/rowXcol) + startSheetIndex
    --print("Frame: " .. currFrame .. ", Row: " .. row .. ", Col: " .. col .. ", Sheet: " .. sheet)

    local currSheet = propPortalObject:GetSmartProperty("Screenshot Index")
    if (currSheet~=sheet) then
        SetPortalSheetIndex(propPortalObject, sheet)
    end

    UOffset = UOffsetBase + row * 1/propRows
    VOffset = VOffsetBase + col * 1/propColumns
    propPortalObject:SetSmartProperty("U Offset", UOffset )
    propPortalObject:SetSmartProperty("V Offset", VOffset )

    currFrame = math.fmod((currFrame + 1), numFrames)

    Task.Spawn(play)
end
Task.Spawn(play)