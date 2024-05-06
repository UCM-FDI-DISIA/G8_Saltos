PlayerController = {behaviour = behaviour}
PlayerController.__index = PlayerController

PlayerController._jumpKey = "W"
PlayerController._leftKey = "A"
PlayerController._rightKey = "D"
PlayerController._speed = 20
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
        self._rb:freezeRotation(Vector3.new(1,0,0))
        self._rb:freezeRotation(Vector3.new(0,0,1))
    end
end

function PlayerController:update(dt)
    local input = InputManager.Instance()
    if(input:getKeyDown(self._jumpKey) and self._onGround) then
        self._startJump = true
        self.behaviour:gameObject():getAudioSource():playSound("Assets/Sounds/jump.mp3",0,0,0)
    end

    if(input:getKeyDown(self._rightKey)) then
        self._walkingRight = true
    end

    if(input:getKeyDown(self._leftKey)) then
        self._walkingLeft = true
    end
end

function PlayerController:fixedUpdate()
    local force = Vector3.new(0,0,0)
    if (self._startJump) then
        force = force + Vector3.new(0,self._speed,0)
        self._onGround = false
        self._startJump = false
    end

    if(self._walkingLeft and not self._walkingRight) then
        force = force + Vector3.new(-self._speed,0,0)
    elseif (self._walkingRight) then
        force = force + Vector3.new(self._speed,0,0)
    end
    force:normalize()
    self._rb:applyCentralImpulse(force)
    self._walkingLeft = false
    self._walkingRight = false
end

function PlayerController:onCollisionEnter(other)
    local otherRb = other:getRigidBody()
    if (otherRb ~= nil) then
        local collisionGroup = otherRb:getCollisionGroup()
        
        self.behaviour:gameObject():getAudioSource():playSound("Assets/Sounds/death.mp3",0,0,0)
        if(collisionGroup == 1) then
            self._onGround = true
        end
    end
end

function PlayerController:onCollisionStay(other)
    if(not self._onGround) then
        local otherRb = other:getRigidBody()
        print("no suelo" .. otherRb:getCollisionGroup())
        if(otherRb:getCollisionGroup() == 1) then
            print("grupo 1 perro")
            self._onGround = true
        end
    end
end
function PlayerController:setParameters(params) 
    for name, param in pairs(params) do
        if (name == "_jumpKey") then
            self._jumpKey = param
        elseif (name == "_leftKey") then
            self._leftKey = param
        elseif (name == "__rightKey") then
            self.__rightKey = param
        end
    end 
end

