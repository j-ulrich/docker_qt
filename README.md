# Dockerfile: Ubuntu Oracular, Qt 6.6

Docker image for building and testing of Qt 6 applications.

Image configuration:
- Ubuntu Oracular (24.10)
- Python 3.12.6
- Qt 6.6.2
	- qmake6
	- qt6-base-dev
	- qt6-base-dev-tools
	- qt6-documentation-tools
	- qt6-declarative-dev
	- qt6-declarative-dev-tools
	- qt6-image-formats-plugins
	- qt6-l10n-tools
	- qt6-translations-l10n
- GCC/G++ 14.1.0
- CMake 3.30.3
- Conan 2.18.1
- Qbs 2.3.1 (default profile: qt-6-6-2-bin)
- Doxygen 1.9.8
- gcovr 7.2
- lcov 2.1
- coverxygen 1.8.1
- Tags files for Qt 6.6 (to link in Doxygen documentation)
- OpenJDK 17 JRE
- SonarQube Scanner 6.2.1.4610 (located at `/opt/sonar-scanner`)


### Other Versions ###
See the [Ubuntu Qt Version Table](https://github.com/j-ulrich/docker_qt/wiki/Ubuntu-Qt-Version-Table) in the project
wiki for an overview of the provided Ubuntu versions along with the corresponding Qt version.