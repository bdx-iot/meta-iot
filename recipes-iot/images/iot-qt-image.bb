DESCRIPTION = "Qt image"
LICENSE = "MIT"

inherit iot-base-image

IMAGE_INSTALL += "\
	packagegroup-qt5 \
	qtserialbus \
"

export IMAGE_BASENAME = "qt-image"
