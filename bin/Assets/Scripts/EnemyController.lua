EnemyController = {behaviour = behaviour}
EnemyController.__index = EnemyController

function EnemyController:update(dt)

    local pos = self.behaviour:gameObject():transform():getPosition()

    local xVal = pos.x - (3 * (dt / 1000))

    pos.x = xVal
    
    self.behaviour:gameObject():getTr():setPosition(pos)
    
end

