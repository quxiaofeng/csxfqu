rmdir _site /s /q

FOR /R "." %%s IN (*~) DO call del "%%~fs"

cd _posts

FOR /R "." %%s IN (*~) DO call del "%%~fs"

PAUSE
