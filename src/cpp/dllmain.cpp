// dllmain.cpp : Define el punto de entrada de la aplicación DLL.
#include "pch.h"
#include "Engine.h"

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}

extern "C" __declspec(dllexport) const char* InitJuego(LocoMotor::Engine * motor)
{

    motor->setWindowName("Juego de saltos");

    motor->setStartingScene("Assets/Scenes/Menu.lua", "Menu");
    //motor->setStartingScene("Assets/Scenes/Scene.lua", "Scene");

#ifdef _DEBUG
    return "Juego de saltos: Running in DEBUG";
#endif // _DEBUG
    return "Juego de saltos: Running in RELEASE";
}

