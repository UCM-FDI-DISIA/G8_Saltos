StartGame = {behaviour = behaviour}
StartGame.__index = StartGame

function StartGame:update(dt)

    local input = InputManager:Instance()

    if (input:GetKeyDown("SPACE")) then
        SceneManager:Instance():loadScene("Assets/Scenes/Gameplay.lua", "Gameplay")
        SceneManager:Instance():changeScene("Gameplay")
    end
    
end

