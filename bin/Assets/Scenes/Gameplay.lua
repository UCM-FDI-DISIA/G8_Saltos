Gameplay = {
    MainCamera = {
        Transform = {
            position = "0 0 25"
        },
        Camera = {
            background = "0.5 0.7 0.9"
        },
        AudioListener = {}
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
    },
    Enemy = {
        Transform = {
            position = "10 0 0",
            size = "0.7 0.7 0.7"
        },
        MeshRenderer = {
            mesh = "DebugCube.mesh",
            material = "DebugCube"
        },
        EnemyController = {}
    },
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
    Floor_01 = {
        Transform = {
            position = "-4 -11 0",
            size = "9 5 1.5"
        },
        MeshRenderer = {
            mesh = "DebugCube.mesh",
            material = "DebugCube"
        },
        RigidBody = { 
            mass = 0, 
            size = "9 5 1"  
        },
    }
}
