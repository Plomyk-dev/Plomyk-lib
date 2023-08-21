function loadmodel(model)
    if Config.Debug then
        print(Lang:t('debug.loadmodel')..model.."^7'") 
    end
    while not HasModelLoaded(model) do 
        RequestModel(model) 
        Wait(20) 
    end
end
function unloadModel(model)
    if Config.Debug then 
        print(Lang:t('debug.unloadmodel')..model.."^7'") 
    end 
    SetModelAsNoLongerNeeded(model) 
end
function loadAnimDict(dict)	if 
    not HasAnimDictLoaded(dict) then 
        if Config.Debug then 
            print(Lang:t('debug.loadanim')..dict.."^7'") 
        end 
        while not HasAnimDictLoaded(dict) do 
            RequestAnimDict(dict) Wait(5) 
        end 
    end 
end
function unloadAnimDict(dict) 
    if Config.Debug then 
        print(Lang:t('debug.unloadanim')..dict.."^7'") 
    end 
    RemoveAnimDict(dict) 
end
function loadPtfxDict(dict)	
    if not HasNamedPtfxAssetLoaded(dict) then 
        if Config.Debug then 
            print(Lang:t('debug.loadptfx')..dict.."^7'") 
        end 
        while not HasNamedPtfxAssetLoaded(dict) do 
            RequestNamedPtfxAsset(dict) Wait(5) 
        end 
    end 
end
function unloadPtfxDict(dict) 
    if Config.Debug then 
        print(Lang:t('debug.unloadptfx')..dict.."^7'") 
    end 
    RemoveNamedPtfxAsset(dict) 
end

exports('loadModel', function (model)
    loadmodel(model)
end)
exports('unloadModel', function (model)
    unloadModel(model)
end)

exports('loadAnimDict', function (dict)
    loadAnimDict(dict)
end)
exports('unloadAnimDict', function (dict)
    unloadAnimDict(dict)
end)

exports('loadPtfxDict', function (dict)
    loadPtfxDict(dict)
end)
exports('unloadPtfxDict', function (dict)
    unloadPtfxDict(dict)
end)