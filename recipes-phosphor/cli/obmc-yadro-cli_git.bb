SUMMARY = "Command-line interface"
DESCRIPTION = "YADRO OpenBMC Command Line Interface for end users"
HOMEPAGE = "https://github.com/YADRO-KNS/obmc-yadro-cli"
PR = "r1"
PV = "1.0+git${SRCPV}"

# License info
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=86d3f3a95c324c9479bd8986968f4327"

# Dependencies
DEPENDS = "phosphor-user-manager"
RDEPENDS_${PN} = "sudo bash"

# Besides executable file we also have shared help
FILES_${PN} += "${datadir}/cli.help"

# Custom installation procedure
do_install() {
  ${B}/install.sh \
    --dir ${D} \
    --machine ${MACHINE} \
    --admin priv-admin \
    --operator priv-operator \
    --user priv-user
}

# Source code repository
S = "${WORKDIR}/git"
SRC_URI = "git://github.com/YADRO-KNS/obmc-yadro-cli"
SRCREV = "5e0afee4fe668ab64aa6ffb25df3a51add5318c2"
