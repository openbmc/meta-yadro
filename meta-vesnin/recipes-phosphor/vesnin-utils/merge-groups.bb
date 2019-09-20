SUMMARY = "Merge system groups"
DESCRIPTION = "Merge the system groups after the BMC upgrade"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

inherit obmc-phosphor-systemd

SRC_URI = "file://${BPN}.sh"

S = "${WORKDIR}"
do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${BPN}.sh ${D}${bindir}/
}

SYSTEMD_SERVICE_${PN} = "${BPN}.service"
SYSTEMD_LINK_${PN} = "../${BPN}.service:sysinit.target.wants/${BPN}.service"
