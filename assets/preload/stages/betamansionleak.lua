function onCreate()

    if not lowQuality then
        makeLuaSprite('sky','mario/LuigiBeta/BackBG',-1200,-850)
        setScrollFactor('sky',0.2,0.2)
        addLuaSprite('sky',false)
    end

    makeLuaSprite('bg','mario/LuigiBeta/BackBG',-1200,-850)
    setScrollFactor('bg',0.8,0.8)
    addLuaSprite('bg',false)

        
    makeAnimatedLuaSprite('fireLeft','mario/LuigiBeta/Alone_Fire',-320,-625)
    addAnimationByPrefix('fireLeft','anim','fire',24,true)
    addLuaSprite('fireLeft',false)

    makeAnimatedLuaSprite('fireRight','mario/LuigiBeta/Alone_Fire',1270,-625)
    addAnimationByPrefix('fireRight','anim','fire',24,true)
    addLuaSprite('fireRight',false)
    
    makeLuaSprite('bgFront','mario/LuigiBeta/FrontBG',-1200,-850)
    addLuaSprite('bgFront',false)
end