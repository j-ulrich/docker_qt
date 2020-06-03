# Dockerfile: Ubuntu Bionic, CMake, Qt 5.9

Dockerfile for creating images for building and automated testing of Qt 5 applications.

Image configuration:
- Ubuntu Bionic (18.04)
- Python 3.6.7
- Qt 5.9.5
- GCC/G++ 7.3.0
- CMake 3.10.2
- Doxygen 1.8.13
- gcovr 3.4
- lcov 1.13
- coverxygen 1.5.0
- Tags files for Qt 5.9.5 (to link in Doxygen documentation)
- OpenJDK 11 JRE
- SonarQube Scanner 3.2.0.1227 (located at `/opt/sonar-scanner`)