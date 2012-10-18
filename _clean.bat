rmdir _site /s /q

FOR /R "." %%s IN (*~) DO call del "%%~fs" /f /q

REM cd _posts

REM FOR /R "." %%s IN (*~) DO call del "%%~fs" /f /q

PAUSE
