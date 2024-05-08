EnemyController = {behaviour = behaviour}
EnemyController.__index = EnemyController

EnemyController._enemyType = "0"
EnemyController._directionTime = 0
EnemyController._maxDirectionTime = 2
EnemyController._directionController = 1

function EnemyController:update(dt)

    local pos = self.behaviour:gameObject():transform():getPosition()

    if (self._enemyType == "0") then
        local xVal = pos.x - self._directionController * (3 * (dt / 1000))
        pos.x = xVal
    elseif(self._enemyType == "1") then
        local yVal = pos.y - self._directionController * (3 * (dt / 1000))
        pos.y = yVal
    elseif(self._enemyType == "2") then
        local zVal = pos.z - self._directionController * (3 * (dt / 1000))
        pos.z = zVal
    end
    
    self.behaviour:gameObject():transform():setPosition(pos)

    self._directionTime = self._directionTime + dt / 1000

    if (self._directionTime > self._maxDirectionTime) then
        self._directionController = self._directionController * -1
        self._directionTime = 0
    end
    
end

function EnemyController:setParameters(params) 
    for name, param in pairs(params) do
        if (name == "enemyType") then
            self._enemyType = param
        elseif (name == "maxDirectionTime") then
            self._maxDirectionTime = tonumber(param)
        end
    end 
end