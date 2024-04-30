set MotorBin=.\LocoMotor\bin
set Bin=.\bin

cd LocoMotor

call .\CompilarLocoMotor.bat

cd ..

msbuild G8_JuegoDeSaltos.sln /p:configuration=Debug
msbuild G8_JuegoDeSaltos.sln /p:configuration=Release

xcopy %MotorBin% %Bin% /h /i /c /k /e /r /y

cd bin

start LocoMotor_Main.exe
