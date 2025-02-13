#!/bin/bash

# Define project root directory
PROJECT_NAME="micromouse_firmware"
mkdir -p $PROJECT_NAME
cd $PROJECT_NAME || exit 1

# Create core directories
mkdir -p Core/Inc Core/Src
mkdir -p Drivers/STM32_HAL Drivers/Custom
mkdir -p Middleware/RTOS Middleware/Communication
mkdir -p Tests Build

# Create source and header files
touch Core/Inc/main.h Core/Inc/motor_control.h Core/Inc/sensors.h 
touch Core/Inc/path_planning.h Core/Inc/power_management.h Core/Inc/config.h

touch Core/Src/main.c Core/Src/motor_control.c Core/Src/sensors.c 
touch Core/Src/path_planning.c Core/Src/power_management.c

# Create additional files
touch CMakeLists.txt Makefile README.md .gitignore

echo "# Micromouse Firmware Project" > README.md
echo "# Build artifacts" > .gitignore
echo "Build/" >> .gitignore

echo "Project structure for $PROJECT_NAME has been set up successfully."
