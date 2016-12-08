SUMMARY = "Qt service relay : GLMF n°200 demo"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

SRC_URI = " \
	git://github.com/bdx-iot/ServiceRelay;protocol=git \
	file://init-service-relay.init \
"

SRCREV = "${AUTOREV}"
S = "${WORKDIR}/git"

DEPENDS = " qtbase qtconnectivity"

inherit qmake5 update-rc.d

do_install_append() {
		
        install -d ${D}${sysconfdir}/init.d/
        
        install -m 0755 ${WORKDIR}/init-service-relay.init ${D}${sysconfdir}/init.d/init-service-relay
}

INITSCRIPT_NAME = "init-service-relay"
INITSCRIPT_PARAMS = "start 99 5 2 . stop 19 0 1 6 ."
