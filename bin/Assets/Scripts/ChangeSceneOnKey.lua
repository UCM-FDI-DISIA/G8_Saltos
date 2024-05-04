ChangeSceneOnKey = {behaviour = behaviour}
ChangeSceneOnKey.__index = ChangeSceneOnKey

ChangeSceneOnKey.key = ""
ChangeSceneOnKey.scene = ""

function ChangeSceneOnKey:update(dt)

    local input = InputManager:Instance()

    if (input:GetKeyDown(ChangeSceneOnKey.key)) then
        --Para concatenar strings, no es ("Hola " + "Mundo"), si no ("Hola " .. "Mundo")
        SceneManager:Instance():loadScene("Assets/Scenes/" .. ChangeSceneOnKey.scene .. ".lua", ChangeSceneOnKey.scene)
        SceneManager:Instance():changeScene(ChangeSceneOnKey.scene)
    end
    
end

function ChangeSceneOnKey:setParameters(params)

    for n,p in pairs(params) do
        if (n == "key") then
            ChangeSceneOnKey.key = p
        elseif (n == "scene") then
            ChangeSceneOnKey.scene = p
        end
    end 

end
