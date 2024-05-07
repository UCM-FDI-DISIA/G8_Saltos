require "Assets/Scripts/G8Math"

PlayerController = {behaviour = behaviour}
PlayerController.__index = PlayerController

PlayerController._jumpKey = "W"
PlayerController._leftKey = "A"
PlayerController._rightKey = "D"
PlayerController._speed = 50
PlayerController._jumpImpulse = 20
PlayerController._startJump = false
PlayerController._onGround = true
PlayerController._firstJump = false
PlayerController._walkingLeft = false
PlayerController._walkingRight = false
PlayerController._timer = 0
PlayerController._rb = nil

function PlayerController:awake()
    self._rb = self.behaviour:gameObject():getRigidBody()
    self._tr = self.behaviour:gameObject():transform()
    if(self._rb ~= nil) then
        self._rb:freezeRotation(Vector3.new(0,0,0))
       
    end

end

function PlayerController:update(dt)
    local input = InputManager.Instance()
    if(input:getKeyDown(self._jumpKey) and self._onGround) then
        self._startJump = true
        self.behaviour:gameObject():getAudioSource():playSound("Assets/Sounds/jump.mp3",0,0,0)
    end

    if(input:getKey(self._rightKey)) then
        print("right")
        self._walkingRight = true
    end

    if(input:getKey(self._leftKey)) then
        self._walkingLeft = true
    end
end

function PlayerController:fixedUpdate()
    local targetSpeed = 0;
    local force = Vector3.new(0,0,0)
    if (self._startJump) then
        force = force + Vector3.new(0,self._jumpImpulse,0)
        self._onGround = false
        self._startJump = false
    end

    if(self._walkingLeft and not self._walkingRight) then
        targetSpeed = self._speed
        self._rb:addForce(Vector3.new(-1,0,0) * self._speed)
    elseif (self._walkingRight) then
        self._rb:addForce(Vector3.new(1,0,0) * self._speed)
        targetSpeed = self._speed
    end
    force:normalize()
    self._rb:applyCentralImpulse(force * self._jumpImpulse)
    self._walkingLeft = false
    self._walkingRight = false
end

function PlayerController:onCollisionEnter(other)
    local otherRb = other:getRigidBody()
    if (otherRb ~= nil) then
        local collisionGroup = otherRb:getCollisionGroup()
        
        if(other:getBehaviour("EnemyController")~=nil) then
            self.behaviour:gameObject():getAudioSource():playSound("Assets/Sounds/death.mp3",0,0,0)
        end

        if(collisionGroup == "static") then
            self._onGround = true
        end
    end
end


function PlayerController:setParameters(params) 
    for name, param in pairs(params) do
        if (name == "jumpKey") then
            self._jumpKey = param
        elseif (name == "leftKey") then
            self._leftKey = param
        elseif (name == "rightKey") then
            self._rightKey = param
        elseif (name == "speed") then
            self._speed = param
        end
    end 
end

