FROM ubuntu:yakkety

RUN apt-get update && apt-get install -y \
    cmake \
    g++ \
    gcc \
    make \
    doxygen \
    libgl1-mesa-dev \
    wget
RUN wget --no-verbose http://download.qt.io/official_releases/qt/5.6/5.6.2/qt-opensource-linux-x64-5.6.2.run
RUN	chmod +x qt-opensource-linux-x64-5.6.2.run && ./qt-opensource-linux-x64-5.6.2.run