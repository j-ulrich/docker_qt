# Dockerfile: Ubuntu Hirsute, Qt 5.15

Dockerfile for creating images for building and automated testing of Qt 5 applications.

Image configuration:
- Ubuntu Hirsute (21.04)
- Python 3.9.4
- Qt 5.15.2 (base & declarative/QML) + qmake
- GCC/G++ 10.3.0
- CMake 3.18.4
- Qbs 1.18.0 (default profile: qt-5-15-2-bin)
- Doxygen 1.9.1
- gcovr 4.2
- lcov 1.14
- coverxygen 1.5.0
- Tags files for Qt 5.15.2 (to link in Doxygen documentation)
- OpenJDK 11 JRE
- SonarQube Scanner 4.6.2.2472 (located at `/opt/sonar-scanner`)


### Other Versions ###
See the [Ubuntu Qt Version Table](https://github.com/j-ulrich/docker_qt/wiki/Ubuntu-Qt-Version-Table) in the project
wiki for an overview of the provided Ubuntu versions along with the corresponding Qt version.