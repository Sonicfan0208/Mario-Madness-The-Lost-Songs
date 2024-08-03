function onUpdatePost()
        if mustHitSection then
		setProperty('defaultCamZoom',1.1);
	else
		setProperty('defaultCamZoom',1.4);
	end
end

function onCreatePost()
        setProperty('camGame.visible', true);
        setProperty('camZooming', true);
end

function onCreate()
        makeLuaSprite('image', 'lol', -500, -300);
        addLuaSprite('image', false);
        setObjectCamera('image','camOther')
end

function onStepHit()
        if curStep == 64 then
                doTweenAlpha('desaparece', 'image', 0, 8, 'linear')
        end
        if curStep == 192 then
                nashe = true
        end
end

function onBeatHit()
        if curBeat >= 48 and curBeat <= 112 then
                if curBeat % 2 == 0 then
                triggerEvent('Add Camera Zoom', '0.07', '0.07')
                end
        end
end