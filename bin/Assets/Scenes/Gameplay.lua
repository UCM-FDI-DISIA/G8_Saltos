Gameplay = {
    MainCamera = {
        Transform = {
            position = "0 0 25"
        },
        Camera = {
            background = "0.5 0.7 0.9"
        },
        AudioListener = {},
        AudioSource = {
            PlayOnAwake = "Assets/Sounds/Effervescence.mp3",
            Volume = "0.01",
            Loop = "-1"
        }

    },
    Player = {
        Transform = {
            position = "-7 0 0",
            size = "1 2 1" 
        },
        MeshRenderer = {
            mesh = "DebugCube.mesh",
            material = "DebugCube"
        },
        RigidBody = { 
            mass = 2, 
            size = "1 2 1"  
        },
        ChangeSceneOnKey = {
            key = "ESCAPE",
            scene = "Menu"
        },
        PlayerController = {
            jumpKey = "W",
            leftKey = "A",
            rightKey = "D",
            speed = 10
        },
        AudioSource = {
            Volume = "2"
        }
    },
    Enemy1 = {
        Transform = {
            position = "10 0 0",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "DebugCube.mesh",
            material = "DebugCube"
        },
        EnemyController = {
            enemyType = "0"
        }
    },
    Enemy2 = {
        Transform = {
            position = "2 0 0",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "DebugCube.mesh",
            material = "DebugCube"
        },
        EnemyController = {
            enemyType = "2"
        }
    },

    --- RANDOM PROPS ---
    Shrek = {
        Transform = {
            position = "0 -55 -20",
            size = "60 60 60" 
        },
        MeshRenderer = {
            mesh = "Shrek.mesh",
            material = "Shrek"
        }
    },
    BananaDuck = {
        Transform = {
            position = "-7 0 0",
            size = "10 10 10"
        },
        MeshRenderer = {
            mesh = "BananaDuck.mesh",
            material = "BananaDuck"
        }
    },

    GodotMan = {
        Transform = {
            position = "7 0 0",
            size = "10 10 10"
        },
        MeshRenderer = {
            mesh = "GodotMan.mesh",
            material = "GodotMan"
        }
    },

    --- PLATFORMS ---
    StartWall = {
        Transform = {
            position = "-18 0 0",
            size = "5 20 1.5"
        },
        MeshRenderer = {
            mesh = "DebugCube.mesh",
            material = "DebugCube"
        },
        RigidBody = { 
            mass = 0, 
            size = "5 20 1"  
        },
    },

    MinecraftBlock_01 = {
        Transform = {
            position = "-4 -11 0",
            size = "9 5 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = { 
            mass = 0, 
            size = "9 5 1"  
        },
    }
}
