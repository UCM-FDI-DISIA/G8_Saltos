BackToMenu = {behaviour = behaviour}
BackToMenu.__index = BackToMenu

function BackToMenu:update(dt)

    local input = InputManager:Instance()

    if (input:GetKeyDown("ESCAPE")) then
        SceneManager:Instance():changeScene("Menu")
    end
    
end

