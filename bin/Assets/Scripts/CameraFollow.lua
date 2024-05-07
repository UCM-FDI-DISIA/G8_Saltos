CameraFollow = {behaviour = behaviour}
CameraFollow.__index = CameraFollow

CameraFollow._gObjName = ""
CameraFollow._transformToFollow = nil
CameraFollow._maxXValue = 10

function CameraFollow:awake()
    
    CameraFollow._transformToFollow = SceneManager:Instance():getActiveScene():getObjectByName(CameraFollow._gObjName):transform()

end

function CameraFollow:update(dt)
    
    if (CameraFollow._transformToFollow ~= nil) then

        local newX = CameraFollow._transformToFollow:getPosition().x

        if (newX >= 0 and newX < self._maxXValue) then
        
            local pos = self.behaviour:gameObject():transform():getPosition()
            pos.x = newX
            self.behaviour:gameObject():transform():setPosition(pos)

        end
    end

end

function CameraFollow:setParameters(params) 
    for name, param in pairs(params) do
        if (name == "followObj") then
            self._gObjName = param
        elseif (name == "maxXValue") then
            self._maxXValue = tonumber(param)
        end
    end 
end