set MotorBin=.\LocoMotor\bin
set Bin=.\bin

call .\LocoMotor\CompilarLocoMotor.bat

msbuild G8_JuegoDeSaltos.sln /p:configuration=Debug
msbuild G8_JuegoDeSaltos.sln /p:configuration=Release

xcopy %MotorBin% %Bin% /h /i /c /k /e /r /y
start %Bin%\LocoMotor_Main.exe
