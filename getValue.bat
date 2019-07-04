@echo off
IF "%1"=="dynamic_ip" (
  GOTO :GETIP %1
)
IF "%1"=="ip" (
  GOTO :GETIP %1
) ELSE (
  GOTO :READCONFIG %1
)

:GETIP
  call getValue.bat record_type
  IF "%record_type%"=="AAAA" (
    FOR /F %%i IN ('curl ipv6.ip.sb') DO (set %1=%%i)
  )
  IF "%record_type%"=="A" (
    FOR /F %%i IN ('curl ipv4.ip.sb') DO (set %1=%%i)
  )
  GOTO :EOF

:READCONFIG
  FOR /F "skip=1 tokens=1,2 delims==" %%a IN (config.ini) Do (IF %1==%%a SET %1=%%b)
  GOTO :EOF
