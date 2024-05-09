Menu = {
    MainCamera = {
        Camera = {
            background = "0.80392 0.82745 0.83529"
        },
        AudioListener = {},
        Transform = {
            position = "0 0 0",
            size = "1 1 1",
            rotation = "0 0 0"
        },
        AudioSource = {
            PlayOnAwake = "Assets/Sounds/Effervescence.mp3",
            Volume = "0.1",
            Loop = "-1"
        }

    },
    Level1 = {
        Transform = {
            position = "0 0 0",
            size = "1 1 1",
            rotation = "0 0 0"
        },
        UIText = {
            anchor = "0.5 0.5",
            position = "-60 100",
            pivot = "0.5 0.5",
            size = "0 25",
            text = "Pulsa 'Q' para jugar al nivel 1",
            font = "PoetsenOne",
            alignment = "r",
            colorTop = "0.13333 0.04706 0.06275",
            colorBot = "0.13333 0.04706 0.06275",
            sortingLayer = 2
        },
        ChangeSceneOnKey = {
            key = "Q",
            scene = "Gameplay"
        }
    },
    Level2 = {
        Transform = {
            position = "0 0 0",
            size = "1 1 1",
            rotation = "0 0 0"
        },
        UIText = {
            anchor = "0.5 0.5",
            position = "60 100",
            pivot = "0.5 0.5",
            size = "0 25",
            text = "Pulsa 'E' para jugar al nivel 2",
            font = "PoetsenOne",
            alignment = "l",
            colorTop = "0.13333 0.04706 0.06275",
            colorBot = "0.13333 0.04706 0.06275",
            sortingLayer = 2
        },
        ChangeSceneOnKey = {
            key = "E",
            scene = "Gameplay2"
        }
    },
    G6 = {
        UIText = {
            anchor = "0 0.",
            position = "10 10",
            pivot = "0 0",
            size = "0 30",
            text = "Grupo 6 presenta:",
            font = "PoetsenOne",
            alignment = "l",
            colorTop = "0.13333 0.04706 0.06275",
            colorBot = "0.13333 0.04706 0.06275",
            sortingLayer = 2
        }
    },
    TitleText = {
        UIText = {
            anchor = "0.5 0.15",
            position = "0 10",
            pivot = "0.5 0",
            size = "0 140",
            text = "G8:",
            font = "PoetsenOne",
            alignment = "c",
            colorTop = "0.46667 0.79608 0.72549",
            colorBot = "0.31373 0.42353 0.39216",
            sortingLayer = 2
        }
    },
    TitleText_Shadow = {
        UIText = {
            anchor = "0.5 0.15",
            position = "3 13",
            pivot = "0.5 0",
            size = "0 142",
            text = "G8:",
            font = "PoetsenOne",
            alignment = "c",
            colorTop = "0.13333 0.04706 0.06275",
            colorBot = "0.13333 0.04706 0.06275",
            sortingLayer = 1
        }
    },
    TitleText_Shadow_2 = {
        UIText = {
            anchor = "0.5 0.15",
            position = "-3 7",
            pivot = "0.5 0",
            size = "0 142", 
            text = "G8:",
            font = "PoetsenOne",
            alignment = "c",
            colorTop = "0.13333 0.04706 0.06275",
            colorBot = "0.13333 0.04706 0.06275",
            sortingLayer = 1
        }
    },
    SubtitleText = {
        UIText = {
            anchor = "0.5 0.15",
            position = "0 150",
            pivot = "0.5 0",
            size = "0 120",
            text = "Juego de Saltos",
            font = "PoetsenOne",
            alignment = "c",
            colorTop = "0.46667 0.79608 0.72549",
            colorBot = "0.45882 0.72157 0.78431",
            sortingLayer = 2
        }
    },
    SubtitleText_Shadow = {
        UIText = {
            anchor = "0.5 0.15",
            position = "3 153",
            pivot = "0.5 0",
            size = "0 122",
            text = "Juego de Saltos",
            font = "PoetsenOne",
            alignment = "c",
            colorTop = "0.13333 0.04706 0.06275",
            colorBot = "0.13333 0.04706 0.06275",
            sortingLayer = 1
        }
    },
    SubtitleText_Shadow_2 = {
        UIText = {
            anchor = "0.5 0.15",
            position = "-3 147",
            pivot = "0.5 0",
            size = "0 122",
            text = "Juego de Saltos",
            font = "PoetsenOne",
            alignment = "c",
            colorTop = "0.13333 0.04706 0.06275",
            colorBot = "0.13333 0.04706 0.06275",
            sortingLayer = 1
        }
    }
    -- PlayText = {
    --     UIText = {
    --         anchor = "0.5 0.15",
    --         position = "0 280",
    --         pivot = "0.5 0",
    --         size = "0 50",
    --         text = "Pulsa 'Espacio' para empezar a jugar",
    --         font = "PoetsenOne",
    --         alignment = "c",
    --         colorTop = "0.45882 0.72157 0.78431",
    --         colorBot = "0.45882 0.72157 0.78431",
    --         sortingLayer = 2
    --     }
    -- },
    -- PlayText_Shadow = {
    --     UIText = {
    --         anchor = "0.5 0.15",
    --         position = "2 282",
    --         pivot = "0.5 0",
    --         size = "0 50",
    --         text = "Pulsa 'Espacio' para empezar a jugar",
    --         font = "PoetsenOne",
    --         alignment = "c",
    --         colorTop = "0.13333 0.04706 0.06275",
    --         colorBot = "0.13333 0.04706 0.06275",
    --         sortingLayer = 1
    --     }
    -- },
    
}