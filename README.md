# Dockerfile: Ubuntu Jammy, Qt 6.2

Dockerfile for creating images for building and automated testing of Qt 6 applications.

Image configuration:
- Ubuntu Jammy (22.04)
- Python 3.10.4
- Qt 6.2.4
	- qmake6
	- qt6-base-dev
	- qt6-base-dev-tools
	- qt6-documentation-tools
	- qt6-declarative-dev
	- qt6-declarative-dev-tools
	- qt6-image-formats-plugins
	- qt6-l10n-tools
	- qt6-translations-l10n
- GCC/G++ 11.2.0
- CMake 3.22.1
- Qbs 1.19.2 (default profile: qt-6-2-4-bin)
- Doxygen 1.9.1
- gcovr 5.0
- lcov 1.15
- coverxygen 1.7.0
- Tags files for Qt 6.2.4 (to link in Doxygen documentation)
- OpenJDK 17 JRE
- SonarQube Scanner 5.0.1.3006 (located at `/opt/sonar-scanner`)


### Other Versions ###
See the [Ubuntu Qt Version Table](https://github.com/j-ulrich/docker_qt/wiki/Ubuntu-Qt-Version-Table) in the project
wiki for an overview of the provided Ubuntu versions along with the corresponding Qt version.