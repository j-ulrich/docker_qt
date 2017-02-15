FROM ubuntu:yakkety

RUN apt-get update && apt-get install -y \
    cmake \
    g++ \
    gcc \
    make \
    qt5-default
