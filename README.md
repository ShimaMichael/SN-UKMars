# SN-UKMars

## Competition details
1. [Events](https://ukmars.org/category/events/)
  -  Maze Solving: Robots autonomously navigate a 16x16 grid maze.
  - Line Following: Follow a black/white track with speed and accuracy.
  - Drag Race: Short sprint for fastest time.
  - Wall Following: Navigate corridors using side sensors
2. Judging Criteria
  - Speed, precision, and algorithm efficiency (e.g., maze-solving strategy).
  - Hardware reliability (e.g., no mid-run failures).

## [Hardware Spec](https://ukmars.org/projects/ukmarsbot/)
|Part	      |Specifications                                                               |
|-----------|-----------------------------------------------------------------------------|
|Processor	|Arduino Nano (C/C++) or Cytron Maker Nano RP2040 (Python) for flexibility 9. |
|Motors	    |N20 12mm micro gearmotors (20:1 gear ratio, extended shaft for encoders) 3.  |
|Wheels	    |32mm diameter with 3mm D-shaft (e.g., Pololu/Kitronic wheels + O-ring tyres).|
|Battery	  |Rechargeable PP3 9V (Li-ion recommended for lighter weight) 3.               |
|Sensors	  |Modular line/wall sensor boards (IR or visible light options) 3.             |
|Chassis	  |<100x100mm core size; 3D-printed or commercial mounts (M2.5/M3 bolts) 9.     |

### Micro controller choices
Powerful controllers for real time computations but not limited to
|Micro                   |Info|
|------------------------|----|
|STM32 (Cortex-M series) | Fast processing, good for real-time control.|
|MSP430                  | Low-power but might struggle with advanced features like SLAM.|
|ESP32                   | Has Wi-Fi and Bluetooth, but real-time performance is slightly weaker than STM32.|
|Arduino                 | (ATmega328P/32U4) – Easy to use but limited performance.|

### **Motors & Drivers**  

| Component     | Options                                       | Best Choice |
|--------------|----------------------------------------------|-------------|
| **Motors**   | Coreless DC motors, Stepper motors         | DC motors with optical encoders + PID control |
| **Drivers**  | TB6612FNG (small robots), DRV8833/8848 (more power) | DRV8833/8848 for better power handling |

---

### **Sensors**  

| Sensor Type      | Purpose                                    | Best Choice |
|-----------------|------------------------------------------|-------------|
| **IR Sensors**   | Fast wall detection                     |  Yes |
| **LIDAR**        | Advanced mapping, SLAM (expensive)      |  Optional |
| **IMU (MPU6050, BNO055)** | Orientation, drift correction |  Yes |
| **Wheel Encoders** | Precision movement                    |  Yes |

---

### **Power Supply**  

| Component          | Options                                | Best Choice |
|-------------------|--------------------------------------|-------------|
| **Battery**       | Li-Po (2S or 3S, 7.4V–11.1V)         | 2S Li-Po with a BMS |
| **Voltage Regulator** | 5V and 3.3V LDOs, Switching regulators | Switching regulators for efficiency |

---

## 🖥 Firmware Specifications  

### **Programming Languages**  

| Language     | Pros                                      | Best Choice |
|-------------|------------------------------------------|-------------|
| **C/C++**   | High performance, best control          |  Yes |
| **MicroPython** | Easy to use, but slower              |  No |
| **Arduino**  | Good for prototyping, limited for competition |  No |

---

### **Algorithm Choices**  

| Task                     | Algorithm Options                      | Best Choice |
|--------------------------|--------------------------------------|-------------|
| **Maze Solving**         | Flood-fill, A*, Dijkstra             | A* or Dijkstra |
| **Speed Control**        | PID Controller                       | PID Controller |
| **Path Optimization**    | Path smoothing, velocity profiling   | Yes |

---

### **Development Tools**  

| Tool Type      | Options                                   | Best Choice |
|---------------|-----------------------------------------|-------------|
| **IDE**       | STM32CubeIDE, Keil, VS Code + PlatformIO | STM32CubeIDE |
| **Debugger**  | ST-Link v2, J-Link                       | ST-Link v2 |
| **Simulation** | Webots, MATLAB (optional)               | Optional |


## Firmware features
- Motor Control: PID tuning for precise speed adjustments.
- Sensor Integration: Calibrate IR/phototransistors for line/wall detection.
- Maze Mapping: Implement flood-fill or similar algorithms for optimal pathfinding

## Resources 
- [UKMARS github](https://github.com/ukmars)
- Additional resources on their [website](https://ukmars.org/resources/)
- Derek Hall youtube has information
