FROM ubuntu:yakkety

RUN apt-get update && apt-get install -y \
    cmake \
    g++ \
    gcc \
    make \
    doxygen \
    wget
RUN wget http://download.qt.io/official_releases/qt/5.6/5.6.2/qt-opensource-linux-x64-5.6.2.run \
	&& chmod +x qt-opensource-linux-x64-5.6.2.run \
	&& ./qt-opensource-linux-x64-5.6.2.run