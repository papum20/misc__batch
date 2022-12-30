::CHECK IF THE GIVEN PARAMETER IS A DIRECTORY

@Echo off
SETLOCAL
Set _attr=%~a1
Set _isdir=%_attr:~0,1%
If /I "%_isdir%"=="d" (
 Echo %1 is a directory
 Exit /b 0
)
Echo %1 is NOT a directory
Exit /b 2