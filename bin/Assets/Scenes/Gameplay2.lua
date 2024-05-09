-- Collission Groups
-- 1: Floor/Platforms
-- 2: Player
-- 3: Enemies
-- 4: Walls

Gameplay2 = {
    MainCamera = {
        Transform = {
            position = "0 0 25"
        },
        Camera = {
            background = "0.7 0.6 0.2"
        },
        AudioListener = {},
        AudioSource = {
            PlayOnAwake = "Assets/Sounds/Effervescence.mp3",
            Volume = "0.01",
            Loop = "-1"
        },
        CameraFollow = {
            followObj = "Player",
            maxXValue = 100
        }

    },

    Player = {
        Transform = {
            position = "-7 0 0",
            size = "1 1 1",
            rotation = "0 70 0"
        },
        MeshRenderer = {
            mesh = "CubemanMesh.mesh",
            material = "CustomMaterial"
        },
        RigidBody = { 
            mass = 2, 
            size = "1 1.3 1" , 
            group = "player"
        },
        ChangeSceneOnKey = {
            key = "ESCAPE",
            scene = "Menu"
        },
        PlayerController = {
            jumpKey = "SPACE",
            leftKey = "A",
            rightKey = "D",
            speed = 25,
            jumpStrengh = 25
        },
        AudioSource = {
            Volume = "2"
        }
    },
    EnemyDec1 = {
        Transform = {
            position = "-10 4 -2.5",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "DebugCube.mesh",
            material = "DebugCube"
        },
        EnemyController = {
            enemyType = "2",
            maxDirectionTime = "2"
        },
        RigidBody = { 
            mass = 0, 
            size = "0.7 0.7 0.7",
            group = 1,
            isTrigger=""
        },

    },
    EnemyDec2 = {
        Transform = {
            position = "-10 6 -3",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "DebugCube.mesh",
            material = "DebugCube"
        },
        EnemyController = {
            enemyType = "2",
            maxDirectionTime = "1.5"
        },
        RigidBody = { 
            mass = 0, 
            size = "0.7 0.7 0.7",
            group = 1,
            isTrigger=""
        },

    },
    EnemyDec3 = {
        Transform = {
            position = "-8 4 -2.75",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "DebugCube.mesh",
            material = "DebugCube"
        },
        EnemyController = {
            enemyType = "2",
            maxDirectionTime = "1.75"
        },
        RigidBody = { 
            mass = 0, 
            size = "0.7 0.7 0.7",
            group = 1,
            isTrigger=""
        },

    },
    EnemyDec4 = {
        Transform = {
            position = "-8 6 -2.7",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "DebugCube.mesh",
            material = "DebugCube"
        },
        EnemyController = {
            enemyType = "2",
            maxDirectionTime = "1.7"
        },
        RigidBody = { 
            mass = 0, 
            size = "0.7 0.7 0.7",
            group = 1,
            isTrigger=""
        },

    },
    Enemy1 = {
        Transform = {
            position = "8 0 0",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "ConemanMesh.mesh",
            material = "RedCharacter"
        },
        EnemyController = {
            enemyType = "0",
            maxDirectionTime = "4"
        },
        RigidBody = { 
            mass = 0, 
            size = "0.7 0.7 0.7",
            group = 1,
            isTrigger=""
        },

    },
    Enemy2 = {
        Transform = {
            position = "26 9 0",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "ConemanMesh.mesh",
            material = "RedCharacter"
        },
        EnemyController = {
            enemyType = "1",
            maxDirectionTime = "1.5"
        },
        RigidBody = { 
            mass = 0, 
            size = "0.7 0.7 0.7",
            group = 1,
            isTrigger=""
        },

    },
    Enemy3 = {
        Transform = {
            position = "49 9 0",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "ConemanMesh.mesh",
            material = "RedCharacter"
        },
        EnemyController = {
            enemyType = "1",
            maxDirectionTime = "1.7"
        },
        RigidBody = { 
            mass = 0, 
            size = "0.7 0.7 0.7",
            group = 1,
            isTrigger=""
        },

    },
    Enemy4 = {
        Transform = {
            position = "71 9 0",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "ConemanMesh.mesh",
            material = "RedCharacter"
        },
        EnemyController = {
            enemyType = "1",
            maxDirectionTime = "1.5"
        },
        RigidBody = { 
            mass = 0, 
            size = "0.7 0.7 0.7",
            group = 1,
            isTrigger=""
        },

    },
    Enemy5 = {
        Transform = {
            position = "77.5 6 0",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "ConemanMesh.mesh",
            material = "RedCharacter"
        },
        EnemyController = {
            enemyType = "1",
            maxDirectionTime = "5"
        },
        RigidBody = { 
            mass = 0, 
            size = "0.7 0.7 0.7",
            group = 1,
            isTrigger=""
        },

    },
    Enemy6 = {
        Transform = {
            position = "65 -7 0",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "ConemanMesh.mesh",
            material = "RedCharacter"
        },
        EnemyController = {
            enemyType = "0",
            maxDirectionTime = "7"
        },
        RigidBody = { 
            mass = 0, 
            size = "0.7 0.7 0.7",
            group = 1,
            isTrigger=""
        },

    },
    Enemy7 = {
        Transform = {
            position = "70 0 0",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "ConemanMesh.mesh",
            material = "RedCharacter"
        },
        EnemyController = {
            enemyType = "0",
            maxDirectionTime = "3"
        },
        RigidBody = { 
            mass = 0, 
            size = "0.7 0.7 0.7",
            group = 1,
            isTrigger=""
        },

    },
    Enemy8 = {
        Transform = {
            position = "54 -4 4",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "DebugCube.mesh",
            material = "DebugCube"
        },
        EnemyController = {
            enemyType = "2",
            maxDirectionTime = "6"
        },
        RigidBody = { 
            mass = 0, 
            size = "0.7 0.7 0.7",
            group = 1,
            isTrigger=""
        },

    },
    Enemy9 = {
        Transform = {
            position = "20 3 0",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "DebugCube.mesh",
            material = "DebugCube"
        },
        EnemyController = {
            enemyType = "2",
            maxDirectionTime = "6"
        },
        RigidBody = { 
            mass = 0, 
            size = "0.7 0.7 0.7",
            group = 1,
            isTrigger=""
        },

    },

    --- RANDOM PROPS ---
    Shrek = {
        Transform = {
            position = "0 -55 -20",
            size = "60 60 60",
            rotation = "0 0 0"
        },
        MeshRenderer = {
            mesh = "Shrek.mesh",
            material = "RedCharacter"
        }
    },
    BananaDuck = {
        Transform = {
            position = "40 0 -15",
            size = "15 15 15",
            rotation = "0 0 40"
        },
        MeshRenderer = {
            mesh = "BananaDuck.mesh",
            material = "BananaDuck"
        }
    },

    GodotMan = {
        Transform = {
            position = "70 0 -12",
            size = "11 11 11",
            rotation = "0 0 -51"
        },
        MeshRenderer = {
            mesh = "GodotMan.mesh",
            material = "GodotMan"
        }
    },

    ------------------------- PLATFORMS -------------------------
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
            size = "5 20 1",
        },
    },
    --para que no se ponga encima de la pared
    StartCeiling = {
        Transform = {
            position = "-18 13 0",
            size = "10 1 1.5"
        },
        MeshRenderer = {
            mesh = "DebugCube.mesh",
            material = "DebugCube"
        },
        RigidBody = { 
            mass = 0, 
            size = "10 1 1",
        },
    },

    MinecraftBlock_01 = {
        Transform = {
            position = "-8 -11 0",
            size = "5 5 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "5 5 1"
        },
    },

    MinecraftBlock_02 = {
        Transform = {
            position = "2 -11 0",
            size = "5 5 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "5 5 1"
        },
    },

    MinecraftBlock_03 = {
        Transform = {
            position = "12 -9.875 0",
            size = "5 5 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "5 5 1"
        },
    },

    MinecraftBlock_04 = {
        Transform = {
            position = "23 -5 0",
            size = "2 2 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "2 2 1"
        },
    },

    MinecraftBlock_05 = {
        Transform = {
            position = "28 -2 0",
            size = "2 2 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "2 2 1"
        },
    },

    MinecraftBlock_06 = {
        Transform = {
            position = "18 3 0",
            size = "1 2 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "1 2 1"
        },
    },

    MinecraftBlock_07 = {
        Transform = {
            position = "38 4 0",
            size = "1 1 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "1 1 1"
        },
    },

    MinecraftBlock_08 = {
        Transform = {
            position = "36 -4 0",
            size = "1 1 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "1 1 1"
        },
    },

    MinecraftBlock_09 = {
        Transform = {
            position = "47 0 0",
            size = "1 1 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "1 1 1"
        },
    },

    MinecraftBlock_10 = {
        Transform = {
            position = "49 -12 0",
            size = "4 4 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "4 4 1"
        },
    },

    MinecraftBlock_11 = {
        Transform = {
            position = "60 4 0",
            size = "1 1 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "1 1 1"
        },
    },

    MinecraftBlock_12 = {
        Transform = {
            position = "54 -7 0",
            size = "1.5 1.5 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "1.5 1.5 1"
        },
    },

    MinecraftBlock_13 = {
        Transform = {
            position = "60 -10 0",
            size = "3 3 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "3 3 1"
        },
    },

    MinecraftBlock_14 = {
        Transform = {
            position = "82 -2 0",
            size = "1 7 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "1 7 1"
        },
    },

    MinecraftBlock_15 = {
        Transform = {
            position = "70 -10 0",
            size = "6 6 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "6 6 1"
        },
    },

    MinecraftBlock_16 = {
        Transform = {
            position = "80 -2 0",
            size = "1 1 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "1 1 1"
        },
    },

    MinecraftBlock_17 = {
        Transform = {
            position = "74 1 0",
            size = "1 1 1.5"
        },
        MeshRenderer = {
            mesh = "MinecraftCube.mesh",
            material = "Grass_Block_TEX"
        },
        RigidBody = {
            mass = 0,
            size = "1 1 1"
        },
    },
    
    TimerText = {
        UIText = {
            anchor = "0 0",
            position = "25 25",
            pivot = "0 0",
            size = "0 50",
            text = "Timer : 0",
            font = "Heavitas",
            alignment = "l",
            colorTop = "0.4 0.4 0.4",
            colorBot = "0 0 0"
        },
        Timer = {}
    },

    GOAL = {
        Transform = {
            position = "100 -15 0",
            size = "10 10 1.5"
        },
        MeshRenderer = {
            mesh = "DebugCube.mesh",
            material = "DebugCube"
        },
        RigidBody = {
            mass = 0,
            size = "10 10 1"
        },
    },
}
