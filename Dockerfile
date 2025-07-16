FROM ubuntu:plucky

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
    python3-venv \
    pipx \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m venv ~/.virtualenvs/coverxygen \
 && . ~/.virtualenvs/coverxygen/bin/activate \
 && pip3 install "coverxygen==1.8.1" \
 && pipx install "conan==2.18.1"

ENV VIRTUAL_ENV=/root/.virtualenvs/coverxygen
ENV PATH=/root/.local/bin:/root/.virtualenvs/coverxygen/bin:$PATH

RUN qbs setup-toolchains --detect && qbs setup-qt /usr/bin/qmake6 qt-6-8-3-bin && qbs config defaultProfile qt-6-8-3-bin \
  && conan profile detect --force

COPY sonar-scanner /opt/sonar-scanner/
RUN chmod a+x /opt/sonar-scanner/bin/sonar-scanner*

COPY qt6-tags/qdoc.tags               /usr/share/qt6/doc/qdoc/qdoc.tags
COPY qt6-tags/qmake.tags              /usr/share/qt6/doc/qmake/qmake.tags
COPY qt6-tags/qt3d.tags               /usr/share/qt6/doc/qt3d/qt3d.tags
COPY qt6-tags/qtconcurrent.tags       /usr/share/qt6/doc/qtconcurrent/qtconcurrent.tags
COPY qt6-tags/qtcore.tags             /usr/share/qt6/doc/qtcore/qtcore.tags
COPY qt6-tags/qtdbus.tags             /usr/share/qt6/doc/qtdbus/qtdbus.tags
COPY qt6-tags/qtgui.tags              /usr/share/qt6/doc/qtgui/qtgui.tags
COPY qt6-tags/qtlabsplatform.tags     /usr/share/qt6/doc/qtlabsplatform/qtlabsplatform.tags
COPY qt6-tags/qtnetwork.tags          /usr/share/qt6/doc/qtnetwork/qtnetwork.tags
COPY qt6-tags/qtnetworkauth.tags      /usr/share/qt6/doc/qtnetworkauth/qtnetworkauth.tags
COPY qt6-tags/qtnfc.tags              /usr/share/qt6/doc/qtnfc/qtnfc.tags
COPY qt6-tags/qtopcua.tags            /usr/share/qt6/doc/qtopcua/qtopcua.tags
COPY qt6-tags/qtopengl.tags           /usr/share/qt6/doc/qtopengl/qtopengl.tags
COPY qt6-tags/qtpositioning.tags      /usr/share/qt6/doc/qtpositioning/qtpositioning.tags
COPY qt6-tags/qtprintsupport.tags     /usr/share/qt6/doc/qtprintsupport/qtprintsupport.tags
COPY qt6-tags/qtqml.tags              /usr/share/qt6/doc/qtqml/qtqml.tags
COPY qt6-tags/qtqmlmodels.tags        /usr/share/qt6/doc/qtqmlmodels/qtqmlmodels.tags
COPY qt6-tags/qtqmltest.tags          /usr/share/qt6/doc/qtqmltest/qtqmltest.tags
COPY qt6-tags/qtquick.tags            /usr/share/qt6/doc/qtquick/qtquick.tags
COPY qt6-tags/qtquick3d.tags          /usr/share/qt6/doc/qtquick3d/qtquick3d.tags
COPY qt6-tags/qtquick3dphysics.tags   /usr/share/qt6/doc/qtquick3dphysics/qtquick3dphysics.tags
COPY qt6-tags/qtquickcontrols.tags    /usr/share/qt6/doc/qtquickcontrols/qtquickcontrols.tags
COPY qt6-tags/qtquickdialogs.tags     /usr/share/qt6/doc/qtquickdialogs/qtquickdialogs.tags
COPY qt6-tags/qtquicktimeline.tags    /usr/share/qt6/doc/qtquicktimeline/qtquicktimeline.tags
COPY qt6-tags/qtremoteobjects.tags    /usr/share/qt6/doc/qtremoteobjects/qtremoteobjects.tags
COPY qt6-tags/qtscxml.tags            /usr/share/qt6/doc/qtscxml/qtscxml.tags
COPY qt6-tags/qtsensors.tags          /usr/share/qt6/doc/qtsensors/qtsensors.tags
COPY qt6-tags/qtserialbus.tags        /usr/share/qt6/doc/qtserialbus/qtserialbus.tags
COPY qt6-tags/qtshadertools.tags      /usr/share/qt6/doc/qtshadertools/qtshadertools.tags
COPY qt6-tags/qtsql.tags              /usr/share/qt6/doc/qtsql/qtsql.tags
COPY qt6-tags/qtstatemachine.tags     /usr/share/qt6/doc/qtstatemachine/qtstatemachine.tags
COPY qt6-tags/qtsvg.tags              /usr/share/qt6/doc/qtsvg/qtsvg.tags
COPY qt6-tags/qttestlib.tags          /usr/share/qt6/doc/qttestlib/qttestlib.tags
COPY qt6-tags/qtwebchannel.tags       /usr/share/qt6/doc/qtwebchannel/qtwebchannel.tags
COPY qt6-tags/qtwebengine.tags        /usr/share/qt6/doc/qtwebengine/qtwebengine.tags
COPY qt6-tags/qtwebsockets.tags       /usr/share/qt6/doc/qtwebsockets/qtwebsockets.tags
COPY qt6-tags/qtwidgets.tags          /usr/share/qt6/doc/qtwidgets/qtwidgets.tags
COPY qt6-tags/qtxml.tags              /usr/share/qt6/doc/qtxml/qtxml.tags