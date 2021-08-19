FROM ubuntu:hirsute

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    cmake \
    g++ \
    gcc \
    make \
    doxygen \
    qt5-qmake-bin \
    qtbase5-dev \
    qtbase5-dev-tools \
    qtbase5-doc-dev \
    qtdeclarative5-dev \
    qtdeclarative5-dev-tools \
    qtdeclarative5-doc-dev \
    qbs \
    lcov \
    openjdk-11-jre \
    python3 \
    python3-pip \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*
RUN pip3 install "coverxygen==1.5.0" "gcovr==4.2"

RUN qbs setup-toolchains --detect && qbs setup-qt /bin/qmake qt-5-15-2-bin && qbs config defaultProfile qt-5-15-2-bin

COPY sonar-scanner /opt/sonar-scanner/
RUN chmod a+x /opt/sonar-scanner/bin/sonar-scanner*


