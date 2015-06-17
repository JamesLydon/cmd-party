echo off
:puttputt
set HEX=0123456789ABCDEF
set /a r1=%random% %% 16
set /a r2=%random% %% 16
call set rndcolor=%%HEX:~%r1%,1%%%%HEX:~%r2%,1%%
IF "%~1" NEQ "" (SET %~1=%rndcolor%) ELSE (COLOR %rndcolor%)
tree /a /f
goto puttputt
