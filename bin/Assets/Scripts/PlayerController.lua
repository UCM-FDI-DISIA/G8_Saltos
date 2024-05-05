PlayerController = {behaviour = behaviour}
PlayerController.__index = PlayerController

PlayerController.jumpKey = "W"
PlayerController.leftKey = "A"
PlayerController.rightKey = "D"
PlayerController._speed = 20
PlayerController._startJump = false
PlayerController._jumping = true
PlayerController._firstJump = false
PlayerController._timer = 0

function PlayerController:awake()
    self._rb = self.behaviour:gameObject():getRigidBody()
    self._tr = self.behaviour:gameObject():transform()
    if(self._rb ~= nil) then
        self._rb:freezeRotation(Vector3.new(1,0,0))
        self._rb:freezeRotation(Vector3.new(0,0,1))
    end
end

function PlayerController:update(dt)
    if(InputManager.Instance():getKeyDown(self.jumpKey) and not self._jumping) then
        self._startJump = true
        self.behaviour:gameObject():getAudioSource():playSound("Assets/Sounds/jump.mp3",0,0,0)
    end
end

function PlayerController:fixedUpdate()
    if (self._startJump) then
        local force = Vector3.new(0,self._speed,0)
        self.behaviour:gameObject():getRigidBody():applyCentralImpulse(force)
        self._jumping = true
        self._startJump = false
    end
end

function PlayerController:onCollisionEnter(other)
    local otherRb = other:getRigidBody()
    if (otherRb ~= nil) then
        local collisionGroup = otherRb:getCollisionGroup()
        
        self.behaviour:gameObject():getAudioSource():playSound("Assets/Sounds/death.mp3",0,0,0)
        if(collisionGroup == 2) then
            self._jumping = false
        end
    end
end
function PlayerController:setParameters(params) 
    for name, param in pairs(params) do
        if (name == "jumpKey") then
            self.jumpKey = param
        elseif (name == "leftKey") then
            self.leftKey = param
        elseif (name == "rightKey") then
            self.rightKey = param
        end
    end 
end

