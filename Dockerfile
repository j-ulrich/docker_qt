FROM ubuntu:bionic

RUN apt-get update && apt-get install -y \
    cmake \
    g++ \
    gcc \
    make \
    doxygen \
    qt5-default \
    gcovr \
    lcov \
    openjdk-8-jre \
    python3 \
    python3-pip \
    curl \
    unzip
RUN pip3 install "coverxygen==1.5.0"

COPY sonar-scanner /opt/sonar-scanner/
RUN chmod a+x /opt/sonar-scanner/bin/sonar-scanner*

COPY qt5-tags/activeqt.tags              /usr/share/qt5/doc/activeqt/activeqt.tags
COPY qt5-tags/qdoc.tags                  /usr/share/qt5/doc/qdoc/qdoc.tags
COPY qt5-tags/qt3d.tags                  /usr/share/qt5/doc/qt3d/qt3d.tags
COPY qt5-tags/qtbluetooth.tags           /usr/share/qt5/doc/qtbluetooth/qtbluetooth.tags
COPY qt5-tags/qtconcurrent.tags          /usr/share/qt5/doc/qtconcurrent/qtconcurrent.tags
COPY qt5-tags/qtcore.tags                /usr/share/qt5/doc/qtcore/qtcore.tags
COPY qt5-tags/qtgraphicaleffects.tags    /usr/share/qt5/doc/qtgraphicaleffects/qtgraphicaleffects.tags
COPY qt5-tags/qtgui.tags                 /usr/share/qt5/doc/qtgui/qtgui.tags
COPY qt5-tags/qtlabscalendar.tags        /usr/share/qt5/doc/qtlabscalendar/qtlabscalendar.tags
COPY qt5-tags/qtlabsplatform.tags        /usr/share/qt5/doc/qtlabsplatform/qtlabsplatform.tags
COPY qt5-tags/qtlocation.tags            /usr/share/qt5/doc/qtlocation/qtlocation.tags
COPY qt5-tags/qtnetwork.tags             /usr/share/qt5/doc/qtnetwork/qtnetwork.tags
COPY qt5-tags/qtnfc.tags                 /usr/share/qt5/doc/qtnfc/qtnfc.tags
COPY qt5-tags/qtpositioning.tags         /usr/share/qt5/doc/qtpositioning/qtpositioning.tags
COPY qt5-tags/qtprintsupport.tags        /usr/share/qt5/doc/qtprintsupport/qtprintsupport.tags
COPY qt5-tags/qtqml.tags                 /usr/share/qt5/doc/qtqml/qtqml.tags
COPY qt5-tags/qtquick.tags               /usr/share/qt5/doc/qtquick/qtquick.tags
COPY qt5-tags/qtquickcontrols.tags       /usr/share/qt5/doc/qtquickcontrols/qtquickcontrols.tags
COPY qt5-tags/qtquickcontrols2.tags      /usr/share/qt5/doc/qtquickcontrols2/qtquickcontrols2.tags
COPY qt5-tags/qtscxml.tags               /usr/share/qt5/doc/qtscxml/qtscxml.tags
COPY qt5-tags/qtsensors.tags             /usr/share/qt5/doc/qtsensors/qtsensors.tags
COPY qt5-tags/qtserialbus.tags           /usr/share/qt5/doc/qtsql/qtserialbus.tags
COPY qt5-tags/qtsql.tags                 /usr/share/qt5/doc/qtsql/qtsql.tags
COPY qt5-tags/qtsvg.tags                 /usr/share/qt5/doc/qtsvg/qtsvg.tags
COPY qt5-tags/qttestlib.tags             /usr/share/qt5/doc/qttestlib/qttestlib.tags
COPY qt5-tags/qtwebchannel.tags          /usr/share/qt5/doc/qtwebchannel/qtwebchannel.tags
COPY qt5-tags/qtwebengine.tags           /usr/share/qt5/doc/qtwebengine/qtwebengine.tags
COPY qt5-tags/qtwebsockets.tags          /usr/share/qt5/doc/qtwebsockets/qtwebsockets.tags
COPY qt5-tags/qtwidgets.tags             /usr/share/qt5/doc/qtwidgets/qtwidgets.tags
COPY qt5-tags/qtxml.tags                 /usr/share/qt5/doc/qtxml/qtxml.tags
COPY qt5-tags/qtxmlpatterns.tags         /usr/share/qt5/doc/qtxmlpatterns/qtxmlpatterns.tags