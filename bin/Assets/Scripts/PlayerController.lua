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
PlayerController._win = false
PlayerController._timer = 0
PlayerController._winCountDown = 2000
PlayerController._rb = nil
PlayerController._resetPos = false
PlayerController._doubleJumpReady = false
PlayerController.currentRot = 0
PlayerController.rotationVelocity = 300
PlayerController.lastRotY = 60


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

    --- Gestionar doble salto
    if (input:getKeyDown(self._jumpKey) and self._onGround == false and self._doubleJumpReady) then
        self._startJump = true
        self._doubleJumpReady = false;
        self.behaviour:gameObject():getAudioSource():playSound("Assets/Sounds/jump.mp3",0,0,0)
    end

    --- Resetear doble salto al tocar suelo
    if (self._onGround ) then
        self._doubleJumpReady = true;
    end

    local rot = Vector3.new(0,self.lastRotY,0)
    if(input:getKey(self._rightKey)) then
        self._walkingRight = true

        --- Girar personaje en el aire
        self.currentRot = self.currentRot + dt/1000 * self.rotationVelocity;
        rot.x = self.currentRot

        self.lastRotY = 60
        rot.y = 60
    elseif (input:getKey(self._leftKey)) then

        self._walkingLeft = true

        --- Girar personaje en el aire, en la direccion contraria
        self.currentRot = self.currentRot + dt/1000 * self.rotationVelocity;
        rot.x = self.currentRot

        self.lastRotY = -60
        rot.y = -60
    end

    local deathnum=-10
    
    if(deathnum > self.behaviour:gameObject():transform():getPosition().y)then
        self._resetPos = true
    end
    if(self._resetPos) then
      self.behaviour:gameObject():transform():setPosition(Vector3.new(0,-4,0))
      self._rb:setLinearVelocity(Vector3.new(0,0,0))
      self._resetPos = false
    end
    if(self._win)then
        self._timer=self._timer + dt
        rot.y = self._timer
        if(self._timer>self._winCountDown)then
            SceneManager:Instance():changeScene("Menu")
        end
    end

    self.behaviour:gameObject():transform():setRotation(rot:asRotToQuaternion())

end

function PlayerController:fixedUpdate()
    local targetSpeed = 0;
    local force = Vector3.new(0,0,0)
    if (self._startJump) then
        force = Vector3.new(0,self._jumpImpulse,0)
        self._rb:applyCentralImpulse(force)
        self._onGround = false
        self._startJump = false
    end

    if (self._walkingLeft and not self._walkingRight) then
        targetSpeed = self._speed
        self._rb:addForce(Vector3.new(-self._speed,0,0))
    elseif (self._walkingRight) then
        self._rb:addForce(Vector3.new(self._speed,0,0))
        targetSpeed = self._speed
    end
    self._walkingLeft = false
    self._walkingRight = false
end

function PlayerController:onCollisionEnter(other)
    local otherRb = other:getRigidBody()
    if (otherRb ~= nil) then
        local collisionGroup = otherRb:getCollisionGroup()
        if(other:getBehaviour("EnemyController")~=nil) then
            self.behaviour:gameObject():getAudioSource():playSound("Assets/Sounds/death.mp3",0,0,0)
            self._resetPos=true
        end

        if(collisionGroup == "static") then
            self._onGround = true
            if(other:getName()=="GOAL")then
                self.behaviour:gameObject():getAudioSource():playSound("Assets/Sounds/success.mp3",0,0,0)
                self._win=true
            end
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
        elseif (name == "jumpStrengh") then
            self._jumpImpulse = param
        end
    end 
end

