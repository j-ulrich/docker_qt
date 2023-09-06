FROM ubuntu:jammy

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    cmake \
    g++ \
    gcc \
    make \
    doxygen \
    qmake6 \
    qt6-base-dev \
    qt6-base-dev-tools \
    qt6-documentation-tools \
    qt6-declarative-dev \
    qt6-declarative-dev-tools \
    qt6-image-formats-plugins \
    qt6-l10n-tools \
    qt6-translations-l10n \
    qbs \
    gcovr \
    lcov \
    openjdk-17-jre \
    python3 \
    python3-pip \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*
RUN pip3 install "coverxygen==1.7.0"

RUN qbs setup-toolchains --detect && qbs setup-qt /bin/qmake qt-6-2-4-bin && qbs config defaultProfile qt-6-2-4-bin

COPY sonar-scanner /opt/sonar-scanner/
RUN chmod a+x /opt/sonar-scanner/bin/sonar-scanner*

COPY qt6-tags/qdoc.tags             /usr/share/qt6/doc/qdoc/qdoc.tags
COPY qt6-tags/qmake.tags            /usr/share/qt6/doc/qmake/qmake.tags
COPY qt6-tags/qtconcurrent.tags     /usr/share/qt6/doc/qtconcurrent/qtconcurrent.tags
COPY qt6-tags/qtcore.tags           /usr/share/qt6/doc/qtcore/qtcore.tags
COPY qt6-tags/qtdbus.tags           /usr/share/qt6/doc/qtdbus/qtdbus.tags
COPY qt6-tags/qtgui.tags            /usr/share/qt6/doc/qtgui/qtgui.tags
COPY qt6-tags/qtlabsplatform.tags   /usr/share/qt6/doc/qtlabsplatform/qtlabsplatform.tags
COPY qt6-tags/qtnetwork.tags        /usr/share/qt6/doc/qtnetwork/qtnetwork.tags
COPY qt6-tags/qtopengl.tags         /usr/share/qt6/doc/qtopengl/qtopengl.tags
COPY qt6-tags/qtprintsupport.tags   /usr/share/qt6/doc/qtprintsupport/qtprintsupport.tags
COPY qt6-tags/qtqml.tags            /usr/share/qt6/doc/qtqml/qtqml.tags
COPY qt6-tags/qtqmlmodels.tags      /usr/share/qt6/doc/qtqmlmodels/qtqmlmodels.tags
COPY qt6-tags/qtqmltest.tags        /usr/share/qt6/doc/qtqmltest/qtqmltest.tags
COPY qt6-tags/qtquick.tags          /usr/share/qt6/doc/qtquick/qtquick.tags
COPY qt6-tags/qtquickcontrols.tags  /usr/share/qt6/doc/qtquickcontrols/qtquickcontrols.tags
COPY qt6-tags/qtsql.tags            /usr/share/qt6/doc/qtsql/qtsql.tags
COPY qt6-tags/qtsvg.tags            /usr/share/qt6/doc/qtsvg/qtsvg.tags
COPY qt6-tags/qttestlib.tags        /usr/share/qt6/doc/qttestlib/qttestlib.tags
COPY qt6-tags/qtwidgets.tags        /usr/share/qt6/doc/qtwidgets/qtwidgets.tags
COPY qt6-tags/qtxml.tags            /usr/share/qt6/doc/qtxml/qtxml.tags
