FROM ubuntu:utopic

RUN sed -i -re 's/([a-z]{2}\.)?archive.ubuntu.com|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    g++ \
    gcc \
    make \
    lcov \
    qt5-default \
    python3 \
    python3-pip \
    curl \
    unzip

RUN pip3 install "gcovr==3.4"

RUN curl https://cmake.org/files/v3.10/cmake-3.10.3-Linux-x86_64.sh --output /opt/cmake-3.10.3-Linux-x86_64.sh \
    && chmod +x /opt/cmake-3.10.3-Linux-x86_64.sh \
    && /opt/cmake-3.10.3-Linux-x86_64.sh --skip-license --prefix=/