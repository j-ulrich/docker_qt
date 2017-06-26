FROM ubuntu:zesty

RUN apt-get update && apt-get install -y \
    cmake \
    g++ \
    gcc \
    make \
    doxygen \
    qt5-default \
    gcovr
