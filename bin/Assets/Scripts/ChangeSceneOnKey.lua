ChangeSceneOnKey = {behaviour = behaviour}
ChangeSceneOnKey.__index = ChangeSceneOnKey

ChangeSceneOnKey.key = ""
ChangeSceneOnKey.scene = ""

function ChangeSceneOnKey:update(dt)

    local input = InputManager:Instance()

    if (input:getKeyDown(self.key)) then
        --Para concatenar strings, no es ("Hola " + "Mundo"), si no ("Hola " .. "Mundo")
        SceneManager:Instance():loadScene("Assets/Scenes/" .. self.scene .. ".lua", self.scene)
        SceneManager:Instance():changeScene(self.scene)
    end
    
end

function ChangeSceneOnKey:setParameters(params)

    for n,p in pairs(params) do
        if (n == "key") then
            self.key = p
        elseif (n == "scene") then
            self.scene = p
        end
    end 

end
