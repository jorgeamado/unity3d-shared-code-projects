@echo off

SET sourceDir="%~dp0\..\..\first-project\Assets\SharedFolder"
SET linkDir="%~dp0\..\..\second-project\Assets\SharedFolder"

call:makeLink  %sourceDir%  %linkDir%


echo.&pause&goto:eof
::--------------------------------------------------------
::-- Function section starts below here
::--------------------------------------------------------

:makeLink    

SET source=%~1
SET destination=%~2

if exist %destination% (
    echo "DIRECTORY LINK for '%source%'  already exists"
) else (
   	ECHO "Attemption to create directory link..."
	mklink /J %destination% %source%
)
goto:eof
