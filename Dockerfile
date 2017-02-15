FROM ubuntu:yakkety

RUN apt-get update && apt-get install -y \
    cmake \
    make \
    qt5-default
