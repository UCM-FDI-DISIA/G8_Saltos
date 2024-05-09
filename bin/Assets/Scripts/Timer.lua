require "Assets/Scripts/G8Math"

Timer = {behaviour = behaviour}
Timer.__index = Timer

Timer._uiText = nil
Timer._currentTimer = 0


function Timer:awake()
    self._uiText = self.behaviour:gameObject():getUIText()

    if(self._uiText ~= nil) then
        self._uiText:setText("Timer : 0")
    end

end

function Timer:update(dt)

    self._currentTimer = self._currentTimer + dt/1000

    if(self._uiText ~= nil) then

        local currentTimerFloor = math.floor(self._currentTimer)
        local finalText ="Timer : " .. tostring(currentTimerFloor)

        self._uiText:setText(finalText)
    end

end