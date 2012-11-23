rmdir _site /s /q

FOR /R "." %%s IN (*~) DO call del "%%~fs"


PAUSE
