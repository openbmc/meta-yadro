SUMMARY = "YADRO Firmware update tool"
DESCRIPTION = "Command line tool for update firmware"
HOMEPAGE = "https://github.com/YADRO-KNS/obmc-yadro-fwupdate"
PR = "r1"
PV = "1.0+git${SRCPV}"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=e3fc50a88d0a364313df4b21ef20c29e"

inherit meson

DEPENDS += " \
    sdbusplus \
    openssl \
"

EXTRA_OEMESON_df-openpower = " \
    -Dopenpower-support=true \
"

SRC_URI = "git://github.com/YADRO-KNS/obmc-yadro-fwupdate"
SRCREV = "b922eb474447b76fb72cc615c025e3845b7c4b7e"
S = "${WORKDIR}/git"
