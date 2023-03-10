::RECURSIVE COMPILER FOR ALL JAVA FILES IN A DIRECTORY AND SUBDIRECTORIES;
::THE COMPILED ROOT FOLDER IS EITHER THE ONE GIVEN AS PARAMETER, OR ./src IF NOT GIVEN

@echo off
title MAKE

set argsEmpty=1
set curPath="src"

for %%x in (%*) do set argsEmpty=0
IF %argsEmpty%==0 set curPath=%1

FOR /D %%G in ("%curPath%\*") DO (
	call ./compile %%G
)

echo %1 %curPath%
javac -d out -sourcepath src %curPath%\*.java