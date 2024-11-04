
# ADAVIA IHM Project

## Overview
Welcome to the ADAVIA IHM project repository. This project was developed as part of my summer internship at **ACTIA Engineering Services**. The goal of this project is to design a comprehensive Human-Machine Interface (HMI) for the efficient management of the autonomous shuttle, ADAVIA. This interface was developed using **Qt**, **QML**, and **C++**, with additional support from **ROS2** and **Python** for advanced functionalities.

## Table of Contents
1. [Introduction](#introduction)
2. [Company Overview](#company-overview)
3. [Problem Statement and Solution](#problem-statement-and-solution)
4. [Requirements Analysis](#requirements-analysis)
5. [Project Overview - ADAVIA](#project-overview---adavia)
6. [ADAVIA HMI Details](#adavia-hmi-details)
7. [Conclusion and Future Perspectives](#conclusion-and-future-perspectives)

## Introduction
The ADAVIA IHM project is part of the company's ongoing efforts to innovate in the field of autonomous vehicles. It highlights the challenges and solutions associated with real-time data handling and user-friendly interfaces.

## Company Overview
**ACTIA Engineering Services**, established in 2005 and based at Technopole El-Ghazal, is a leader in R&D with more than 1,000 professionals and a certified environment that meets international standards.

## Problem Statement and Solution
Autonomous vehicle interfaces must process complex data streams in real-time while providing an intuitive user experience. The **ADAVIA IHM** was designed to meet these challenges by leveraging **Qt/QML** technology, ensuring seamless data processing and an ergonomic interface.

## Requirements Analysis
The interface had to meet several critical requirements:
- Monitoring and visualization of ultrasonic sensor data.
- GPS navigation with real-time position updates.
- Integration of YOLO for object detection and passenger counting.
- Streaming of real-time video feeds.
- Dashboard communication and LIDAR mapping visualization.

The solution needed to ensure optimal performance, intuitive ergonomics, high reliability, and compatibility with various systems.

## Project Overview - ADAVIA
**ADAVIA** is an autonomous shuttle developed by ACTIA, equipped with a variety of sensors (LIDAR, GPS, cameras, and ultrasonic sensors) to enable full autonomy and environmental perception.

### Key Features of ADAVIA:
- **Advanced Systems Integration**: Includes MRU for emergency stop, electric traction and steering motors.
- **Nvidia AGX Xavier**: Used for obstacle detection and mapping.
- **Real-Time Sensor Data**: Combines inputs from LIDAR, GPS, and ultrasonic sensors for precise navigation.

## ADAVIA HMI Details
### Tools and Technologies:
- **QML** for dynamic user interfaces.
- **C++** for application logic.
- **ROS2** for component communication.
- **Python** for YOLO model integration.

### Modules and Interfaces:
1. **Dashboard ADAVIA**:
   - Displays critical information such as a 3D model of the shuttle, time, date, battery level, and speed.
   - Provides controls for various shuttle accessories.
![Parametre ADAVIA](https://github.com/user-attachments/assets/2334d285-1d98-43e4-a2f1-b4f1555f5eea)

2. **GPS Navigation**:
   - Locates the current position.
   - Allows users to search for and select destinations.
   - Displays route paths and offers route simulation functionality.
![Navigation GPS](https://github.com/user-attachments/assets/de641a2b-5e88-404d-97c8-086e0c0d081f)

3. **Camera Streaming**:
   - Real-time video streaming from the front, rear, and side cameras.
![Uploading StreamingCamera.png…]()

4. **Ultrasonic Sensor Data Display**:
   - Visualizes the distances and positions of objects detected by the sensors.
   - Provides notifications for nearby obstacles.
![Ultrason](https://github.com/user-attachments/assets/acee0192-796d-456d-b059-544df5433a1c)

5. **YOLO Model Integration**:
   - Counts passengers through the side camera.
   - Detects objects such as traffic signs and lights through the front camera.
![modele YOLO](https://github.com/user-attachments/assets/54166381-b00b-4b0f-a1b9-6e33c2c3513c)

6. **Navigation Control and LIDAR Data**:
   - Controls shuttle navigation.
   - Displays real-time LIDAR data for obstacle detection and avoidance.
![Uploading Screenshot from 2024-09-03 14-39-36.png…]()

7. **Shuttle Settings**:
   - Controls display brightness and external lights.
   - Configures cruise control distance, autosteer, and automatic lane change.
   - Provides options for display modes (Day, Night, Auto), unit selection, and traction control settings.
![Parametre ADAVIA](https://github.com/user-attachments/assets/c0389754-6109-43d5-a56a-b1b86fcef437)

## Conclusion and Future Perspectives
**ADAVIA IHM** provides a comprehensive solution for autonomous vehicle management, integrating advanced technologies and an intuitive interface. Future developments will focus on:
- Enhancing interfaces with new technologies.
- Validating application performance directly on the ADAVIA shuttle.
- Overcoming challenges related to LIDAR data visualization.

---

Thank you for visiting this repository.
