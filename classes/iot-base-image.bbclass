DESCRIPTION = "Basic image"
LICENSE = "MIT"

# set password to iot
inherit extrausers
EXTRA_USERS_PARAMS = " \
    usermod -P iot root; \
    "

inherit core-image

# Package gesture
IMAGE_FEATURES += "package-management"

# SSH gesture
IMAGE_FEATURES += "ssh-server-dropbear"

# To Include splash at boot-up
IMAGE_FEATURES += "splash"

ALSA_INSTALL = " \
    	alsa-utils \
    	alsa-tools \
"

MIKROBUS_INSTALL = " \
    	clicks-board-init \
"

CORE_OS_INSTALL = " \
    	dbus \
    	bluez5 \
    	sysfsutils \ 	
    	kernel-devicetree \
    	kernel-image \
    	kernel-modules \
    	dnsmasq \
    	hostapd \
"

IMAGE_INSTALL += " \
	${CORE_OS_INSTALL} \
	openssh-sftp-server \
	packagegroup-distro-base \
	packagegroup-machine-base \
	${ALSA_INSTALL} \
	${MIKROBUS_INSTALL} \
	packagegroup-iot-base \
	packagegroup-tools-io \
    	${CORE_IMAGE_EXTRA_INSTALL} \
"

PACKAGE_EXCLUDE = "packagegroup-base-extended"

# some default locales
IMAGE_LINGUAS ?= "fr-fr en-us"

export IMAGE_BASENAME = "base-image"

