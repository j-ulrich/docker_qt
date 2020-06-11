# Dockerfile: Ubuntu Focal, Qt 5.12

Dockerfile for creating images for building and automated testing of Qt 5 applications.

Image configuration:
- Ubuntu Focal (20.04)
- Python 3.8.2
- Qt 5.12.8
- GCC/G++ 9.3.0
- CMake 3.16.3
- Doxygen 1.8.17
- gcovr 4.2
- lcov 1.14
- coverxygen 1.5.0
- Tags files for Qt 5.12.8 (to link in Doxygen documentation)
- OpenJDK 11 JRE
- SonarQube Scanner 3.2.0.1227 (located at `/opt/sonar-scanner`)


### Other Versions ###
See the [Ubuntu Qt Version Table](https://github.com/j-ulrich/docker_qt/wiki/Ubuntu-Qt-Version-Table) in the project
wiki for an overview of the provided Ubuntu versions along with the corresponding Qt version.