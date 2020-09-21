FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
    file://00-bmc-eth0.4004.0.network \
    file://00-bmc-eth0.4004.1.network \
    file://00-bmc-eth0.0.network \
    file://00-bmc-eth0.1.network \
    file://eth0.4004.netdev \
"

do_install_append() {
    mkdir -p ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/00-bmc-eth0.4004.0.network ${D}${sysconfdir}/systemd/network/
    install -m 0644 ${WORKDIR}/00-bmc-eth0.4004.1.network ${D}${sysconfdir}/systemd/network/
    install -m 0644 ${WORKDIR}/00-bmc-eth0.0.network ${D}${sysconfdir}/systemd/network/
    install -m 0644 ${WORKDIR}/00-bmc-eth0.1.network ${D}${sysconfdir}/systemd/network/
    install -m 0644 ${WORKDIR}/eth0.4004.netdev ${D}${sysconfdir}/systemd/network/
}

FILES_${PN}_append = " \
    ${sysconfdir}/systemd/network/00-bmc-eth0.4004.0.network \
    ${sysconfdir}/systemd/network/00-bmc-eth0.4004.1.network \
    ${sysconfdir}/systemd/network/00-bmc-eth0.0.network \
    ${sysconfdir}/systemd/network/00-bmc-eth0.1.network \
    ${sysconfdir}/systemd/network/eth0.4004.netdev \
"
