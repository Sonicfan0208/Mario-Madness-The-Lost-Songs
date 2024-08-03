
local xx = 220;
local yy = 150;
local yyh = 350;
local xx2 = 1020;
local yy2 = 550;
local ofs = 60;
local ofs2 = 400;
local ofs3 = 0;
local followchars = true;
local followzoom = true;
local final = false;
local del = 0;
local del2 = 0;
local movearrow = false;
local followdad = false;

function onCreate()
	setProperty('camZooming', true)
    setProperty('camTweenY', 150)
end

function onUpdate()

    yy = getProperty('camTweenY') + ofs3
    yy2 = getProperty('camTweenY') + ofs2

    --	"boyfriend": [870, 250],
    --	"girlfriend": [300, 230],
    --	"opponent": [100, -200]

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then

            if followzoom == true then
            setProperty('defaultCamZoom',0.6);
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'Hey' then
                triggerEvent('Camera Follow Pos',xx-ofs,yyh)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'talk' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            if followzoom == true then
                setProperty('defaultCamZoom',0.45);
                end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        if final == true then
            triggerEvent('Camera Follow Pos','620','300')
        elseif followdad == true then
            triggerEvent('Camera Follow Pos',((getProperty('dadGroup.x')) / 2) + 250 , ((getProperty('dadGroup.y')) / 2)  + 200)
        end
    end
    
end

function onBeatHit()

    if curBeat == 36 then
        followzoom = false;
        ofs2 = 450
    end

    if curBeat == 40 then
        followzoom = true;
        ofs2 = 400
    end

    if curBeat >= 40 and curBeat <= 72 then
        triggerEvent('Add Camera Zoom','0.008','')
    end

    if curBeat % 2 == 0 then

        if curBeat >= 72 and curBeat <= 103 then
            triggerEvent('Add Camera Zoom','0.02','')
            triggerEvent('Screen Shake','0.36, 0.003','0.36, 0.0015')
        end

        if curBeat >= 136 and curBeat <= 151 then
            triggerEvent('Add Camera Zoom','0.02','')
            triggerEvent('Screen Shake','0.36, 0.003','0.36, 0.0015')
        end

    end

    if curBeat % 8 == 0 then

        if curBeat >= 136 and curBeat <= 199 then
            triggerEvent('Triggers Dark Forest','4','')
        end

    end

    if curBeat >= 104 and curBeat <= 136 then
        triggerEvent('Add Camera Zoom','0.008','')
    end

    if curBeat >= 152 and curBeat <= 200 then
        triggerEvent('Add Camera Zoom','0.008','')
    end
    
    if curBeat == 204 then
        followchars = false;
        followdad = true;
        setProperty('defaultCamZoom',0.65);
    end

    if curBeat == 227 then
        followchars = false;
        followdad = false;
        followzoom = false;
    end

    if curBeat == 230 then
        followchars = true;
        followdad = false;
    end

    if curBeat == 231 then
        followzoom = true;
        ofs3 = 150;
    end

    if curBeat >= 300 and curBeat < 364 then
        triggerEvent('Add Camera Zoom','0.008','')
        triggerEvent('Screen Shake','0.36, 0.003','0.36, 0.0015')
    end

    if curBeat >= 300 then
        triggerEvent('Triggers Dark Forest','6','')
    end

    if curBeat == 363 then
        followzoom = false;
    end

    if curBeat == 364 then
        followchars = false;
        final = true;
    end
end

function onStepHit()
    if curStep == 1052 then
        doTweenZoom('zomss', 'camGame', 1.2, 0.25, 'sineInOut')
        doTweenAlpha('cameasdad', 'camHUD', 0.5, 0.10, 'linear')
    end
    if curStep == 1056 then
        doTweenAlpha('cameasdadss', 'camHUD', 1, 0.10, 'linear')
    end
    if curStep == 1068 then
        doTweenZoom('zom', 'camGame', 1.2, 0.25, 'sineInOut')
        doTweenAlpha('cameasdadssssss', 'camHUD', 0, 0.10, 'linear')
    end
    if curStep == 1072 then
        doTweenAlpha('cameasdadddsds', 'camHUD', 1, 0.10, 'linear')
    end
end