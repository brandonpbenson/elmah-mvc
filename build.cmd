@echo Off
set config=%1
if "%config%" == "" (
   set config=Release
)

%WINDIR%\Microsoft.NET\Framework\v4.0.30319\msbuild build.proj /p:Configuration="%config%" /t:Compile /m /v:M /fl /flp:LogFile=msbuild.log;Verbosity=Normal /nr:false