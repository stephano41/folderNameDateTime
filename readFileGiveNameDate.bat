
@echo off
SETLOCAL EnableDelayedExpansion 
set "path_of_folder=%~dp0"
cd %path_of_folder%

@REM %%a is dd/MM/yyyy date; %%b is time; %%c is AM or PM %%d is file type?; %%e is file name
>nameDate.csv (
  echo Date,Time,Name
  if exist "%path_of_folder%" ( 
    @REM Path exists.
    for /f "skip=5 tokens=1,2,3,4,5 delims= " %%a in ('dir /ad /tc "%path_of_folder%"') do (
        echo %%a,%%b%%c,%%e
        
    )
  ) else ( 
    echo Path does not exist. 
  )
)
pause

