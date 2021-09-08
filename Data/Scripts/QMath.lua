local QMath = {}

    -----
    -- Quaternion Log
    QMath.log = function (q)

        -- from https://users.aalto.fi/~ssarkka/pub/quat.pdf and https://glmatrix.net/docs/quat.js.html#line230
        local r = math.sqrt(q.x * q.x + q.y * q.y + q.z * q.z)
        local l = math.sqrt(q.x * q.x + q.y * q.y + q.z * q.z + q.w*q.w)
        local t = 0
        if (r > 0) then
            t = math.acos(q.w/l) / r
        end
        local out = Quaternion.New()
        out.x = q.x * t
        out.y = q.y * t
        out.z = q.z * t
        out.w = math.log(l)
        return out

    end

    QMath.dot = function(q1, q2)
        return q1.x*q2.x + q1.y*q2.y + q1.z*q2.z * q1.w*q2.w
    end

    QMath.distance = function(q)
        return math.sqrt(q.x*q.x + q.y*q.y + q.z*q.z + q.w*q.w)
    end

    QMath.exp = function (q)

        -- from https://glmatrix.net/docs/quat.js.html#line230 and https://users.aalto.fi/~ssarkka/pub/quat.pdf
        local r = math.sqrt(q.x * q.x + q.y * q.y + q.z * q.z)
        local et = math.exp(q.w)
        local s = 0
        if (r > 0) then
            s = (et * math.sin(r)) / r
        end
        return Quaternion.New(q.x * s, q.y * s, q.z * s, et * math.cos(r))
        
    end

    QMath.conj = function (q)
        return Quaternion.New(-q.x, -q.y, -q.z, q.w)
    end

    QMath.quadrangle = function (qprev, q, qnext)
        local a = QMath.log(QMath.conj(q) * qprev)
        local b = QMath.log(QMath.conj(q) * qnext)

        return q * QMath.exp( (a + b) * (-1/4) )
    end

    QMath.quadrangles = function (qs) 
        local qrs = {}
        for i=2, #qs-1, 1 do
            table.insert(qrs, QMath.quadrangle(qs[i-1], qs[i], qs[i+1]) )
        end
        return qrs
    end

    QMath.squad = function (q1, qr1, qr2, q2, h)
        local s1 = QMath.slerp_notNormalized(q1, q2, h)
        local s2 = QMath.slerpFullPath_notNormalized(qr1, qr2, h)
        local sh = 2 * h * (1 - h)
        return QMath.slerpFullPath(s1, s2, sh)
    end

    QMath.squadFullPath = function (q1, qr1, qr2, q2, h)
        local s1 = QMath.slerpFullPath_notNormalized(q1, q2, h)
        local s2 = QMath.slerpFullPath_notNormalized(qr1, qr2, h)
        local sh = 2 * h * (1 - h)
        return QMath.slerpFullPath(s1, s2, sh)
    end

    QMath.floatselect = function (Comparand,ValueGEZero,ValueLTZero)
        if (Comparand >= 0.0) then
            return ValueGEZero
        else 
            return ValueLTZero
        end
    end

    QMath.normalize = function(q)
        local d = 1.0/QMath.distance(q)
        return Quaternion.New(q.x*d, q.y*d, q.z*d, q.w*d)
    end

    QMath.slerpFullPath_notNormalized = function(quat1, quat2, Alpha)
        local CosAngle = CoreMath.Clamp(QMath.dot(quat1, quat2), -1.0, 1.0)
        local Angle = math.acos(CosAngle)
    
        if ( math.abs(Angle) < 0.0001 ) then
            return quat1
        end
    
        local SinAngle = math.sin(Angle)
        local InvSinAngle = 1.0/SinAngle
    
        local Scale0 = math.sin((1.0-Alpha)*Angle)*InvSinAngle
        local Scale1 = math.sin(Alpha*Angle)*InvSinAngle
    
        return quat1*Scale0 + quat2*Scale1;
    end

    QMath.slerpFullPath = function(quat1, quat2, slerp)
        return QMath.normalize(QMath.slerpFullPath_notNormalized(quat1, quat2, slerp))
    end

    QMath.slerp = function(quat1, quat2, slerp)
        return QMath.normalize(QMath.slerp_notNormalized(quat1, quat2, slerp))
    end

    -- custom slerp to always take shortest path
	QMath.slerp_notNormalized = function(Quat1, Quat2, Slerp)
        local RawCosom = QMath.dot(Quat1,Quat2)
        -- Unaligned quats - compensate, results in taking shorter route.
        local Cosom = QMath.floatselect(RawCosom, RawCosom, -RawCosom)
        
        local Scale0 = 0.0
        local Scale1 = 0.0
    
        if( Cosom < 0.9999 ) then
            local Omega = math.acos(Cosom)
            local InvSin = 1.0/math.sin(Omega)
            Scale0 = math.sin( (1.0 - Slerp) * Omega ) * InvSin
            Scale1 = math.sin( Slerp * Omega ) * InvSin
        else
            --Use linear interpolation.
            Scale0 = 1.0 - Slerp
            Scale1 = Slerp
        end
    
        --In keeping with our flipped Cosom:
        Scale1 = QMath.floatselect( RawCosom, Scale1, -Scale1 )
    
        local Result = Quaternion.New()
            
        Result.x = Scale0 * Quat1.x + Scale1 * Quat2.x
        Result.y = Scale0 * Quat1.y + Scale1 * Quat2.y
        Result.z = Scale0 * Quat1.z + Scale1 * Quat2.z
        Result.w = Scale0 * Quat1.w + Scale1 * Quat2.w
    
        return Result
    end

return QMath