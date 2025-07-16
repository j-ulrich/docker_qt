# Dockerfile: Ubuntu Plucky, Qt 6.8

Docker image for building and testing of Qt 6 applications.

Image configuration:
- Ubuntu Plucky (25.04)
- Python 3.13.3
- Qt 6.8.3
	- qmake6
	- qt6-base-dev
	- qt6-base-dev-tools
	- qt6-documentation-tools
	- qt6-declarative-dev
	- qt6-declarative-dev-tools
	- qt6-image-formats-plugins
	- qt6-l10n-tools
	- qt6-translations-l10n
- GCC/G++ 14.2.0
- CMake 3.31.6
- Conan 2.18.1
- Qbs 2.5.1 (default profile: qt-6-8-3-bin)
- Doxygen 1.9.8
- gcovr 7.2
- lcov 2.3
- coverxygen 1.8.1
- Tags files for Qt 6.8 (to link in Doxygen documentation)
- OpenJDK 17 JRE
- SonarQube Scanner 7.1.0.4889 (located at `/opt/sonar-scanner`)


### Other Versions ###
See the [Ubuntu Qt Version Table](https://github.com/j-ulrich/docker_qt/wiki/Ubuntu-Qt-Version-Table) in the project
wiki for an overview of the provided Ubuntu versions along with the corresponding Qt version.