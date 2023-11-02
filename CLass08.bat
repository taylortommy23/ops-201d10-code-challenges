# Disable command echoing in the console.
@echo off

# Enable delayed variable expansion for variables inside loops and conditional statements.
setlocal enabledelayedexpansion

# Prompt the user to input the source folder path and store it in the "sourcePath" variable.
set /p sourcePath=Enter the source folder path:

# Prompt the user to input the destination folder path and store it in the "destinationPath" variable.
set /p destinationPath=Enter the destination folder path:

# Check if the source folder does not exist.
if not exist "!sourcePath!\" (

# Display an error message and exit the script if the source folder doesn't exist.
    echo Error: Source folder does not exist.
    goto :eof
    
)

# Check if the destination folder does not exist.
if not exist "!destinationPath!\" (

# Display an error message and exit the script if the destination folder doesn't exist.
    echo Error: Destination folder does not exist.
    goto :eof
    
)

# Use the "robocopy" command to copy the contents of the source folder to the destination folder with the "/E" option, which includes subdirectories.
robocopy "!sourcePath!" "!destinationPath!" /E

# Check the exit code of the "robocopy" command.
if errorlevel 8 (

# Display a success message if the "robocopy" command didn't encounter errors.
    echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
    echo Copy operation completed successfully.
    
)

# Label that marks the end of the script.
:end


 # End the local environment and release resources.
endlocal

