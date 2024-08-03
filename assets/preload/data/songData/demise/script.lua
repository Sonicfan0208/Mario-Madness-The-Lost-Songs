
local xx = 1220;
local yy = 0;
local yyh = 350;
local xx2 = 380;
local yy2 = 350;
local ofs = 60;
local ofs2 = 120;
local followchars = true;
local del = 0;
local del2 = 0;
local lol = 0;
local dadzoom = 0.4;
local bfzoom = 0.6;

function onCreatePost()
    setProperty('gf.visible', false)
    setProperty('camZooming', true)

    noteTweenX("NoteMove1", 4, 92, 0.0001)
    noteTweenX("NoteMove2", 5, 204, 0.0001)
    noteTweenX("NoteMove3", 6, 316, 0.0001)
    noteTweenX("NoteMove4", 7, 428, 0.0001)

    noteTweenX("NoteMove5", 0, 732, 0.0001)
    noteTweenX("NoteMove6", 1, 844, 0.0001)
    noteTweenX("NoteMove7", 2, 956, 0.0001)
    noteTweenX("NoteMove8", 3, 1068, 0.0001)

end

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom', dadzoom)
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
        else
            setProperty('defaultCamZoom', bfzoom)
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
        triggerEvent('Camera Follow Pos','','')
    end
    
end

function onBeatHit()

    if curBeat >= 48 and curBeat <= 60 then
		triggerEvent('Add Camera Zoom','','')
	end

    if curBeat >= 64 and curBeat <= 79 then
		triggerEvent('Add Camera Zoom','','')
	end

    if curBeat % 4 == 0 then
    if curBeat >= 80 and curBeat <= 111 then
		triggerEvent('Add Camera Zoom','0.04','0.06')
        triggerEvent('Screen Shake','0.27, 0.003','0.27, 0.0015')
	end

    end

    if curBeat >= 112 and curBeat <= 176 then
		triggerEvent('Add Camera Zoom','0.03','0.05')
	end

    if curBeat >= 208 and curBeat <= 239 then
		triggerEvent('Add Camera Zoom','','')
	end

    if curBeat >= 240 and curBeat <= 303 then
		triggerEvent('Add Camera Zoom','0.03','0.05')
	end

    if curBeat % 2 == 0 then
        if curBeat >= 304 and curBeat <= 335 then
            triggerEvent('Add Camera Zoom','0.04','0.06')
            triggerEvent('Screen Shake','0.27, 0.003','0.27, 0.0015')
        end
    
        end

    if curBeat == 190 then
        dadzoom = 0.5
        xx = 1400
        yy = -100
    end

    if curBeat == 192 then
        dadzoom = 0.4
        xx = 1220
        yy = 0
    end

    if curBeat == 433 then
        dadzoom = 0.2
    end
    if curBeat == 436 then
        doTweenZoom('zoom', 'camGame', 0.4, 20.21)
    end

    if curBeat == 501 then
        dadzoom = 0.4
    end
end