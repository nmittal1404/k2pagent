@if "%DEBUG%" == "" @echo off

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Determine what directory it is in.
set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.\

set KS_HOME=%DIRNAME%..

set JAVA_EXE=%K2P_JAVA_EXE%

if "%K2P_JAVA_EXE%"=="" (
  set JAVA_EXE=java.exe
)

:init
set JAVA_TMP_FL=%KS_HOME%\bin\tmp_java_vrsn.txt
"%JAVA_EXE%" -version 2> %JAVA_TMP_FL%

set l_version_string=""
for /F "delims=" %%x in (%JAVA_TMP_FL%) do (
set l_version_string=%%x
goto OUT_OF_LOOP
)

:OUT_OF_LOOP

@rem Delete the temp file
del %JAVA_TMP_FL%

@rem Get version number from the text
for /f "tokens=1-3 delims= " %%a in ("%l_version_string%") do (
  set l_version_string=%%c
)
set L_MAJOR_VERSION=0
set L_MINOR_VERSION=0

for /f "tokens=1-3 delims=." %%a in (%l_version_string%) do (
  set L_MAJOR_VERSION=%%a
  set L_MINOR_VERSION=%%b
)

@rem Validate the version number

set l_valid_java=0

If %L_MAJOR_VERSION% GTR 1 set l_valid_java=1
If %L_MAJOR_VERSION% EQU 1 (If %L_MINOR_VERSION% GEQ 8 set l_valid_java=1)

if %l_valid_java% EQU 0 (
  echo "Please check your enviornment, PATH should be configured with Java version 1.8+ ("java.exe -version" should return 1.8+)"
  echo "Or you need to configure K2P_JAVA_EXE enviornment variable to the java.exe 1.8+"
  goto end
)

set JAR_PATH=%KS_HOME%\lib\KSAgent.jar

"%JAVA_EXE%" -DKS_HOME="%KS_HOME%" -jar "%JAR_PATH%" %*

:end
@rem End local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" endlocal