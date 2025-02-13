# Micromouse Firmware Project

# File Structure

micromouse_firmware/
│── Core/
│   ├── Inc/                # Header files
│   │   ├── main.h
│   │   ├── motor_control.h
│   │   ├── sensors.h
│   │   ├── path_planning.h
│   │   ├── power_management.h
│   │   ├── config.h         # Configuration settings (e.g., pin mappings)
│   │
│   ├── Src/                # Source files
│   │   ├── main.c
│   │   ├── motor_control.c
│   │   ├── sensors.c
│   │   ├── path_planning.c
│   │   ├── power_management.c
│   │
│── Drivers/                # STM32 HAL and third-party drivers
│   ├── STM32_HAL/          # HAL library files
│   ├── Custom/             # Custom peripheral drivers (e.g., encoders, IR sensors)
│
│── Middleware/             # Middleware components (if needed)
│   ├── RTOS/               # Optional real-time OS
│   ├── Communication/      # UART, Bluetooth, etc.
│
│── Tests/                  # Unit and integration tests
│
│── Build/                  # Compiled binaries and artifacts
│
│── CMakeLists.txt          # CMake configuration (if using CMake)
│── Makefile                # Makefile (if using Make)
│── README.md               # Documentation
│── .gitignore              # Ignore build artifacts
