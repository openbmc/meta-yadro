PR = "r1"
PV = "1.0+git${SRCPV}"

do_configure[cleandirs] := ""
PACKAGECONFIG[libudev] = ""

# Source code repository
S = "${WORKDIR}/git"
SRC_URI = "git://github.com/YADRO-KNS/qemu.git;nobranch=1"
SRCREV  = "797be615a9bb4e4b0f0d3a9c426a5efb964e43b7"

QEMU_TARGETS = "arm"

PACKAGECONFIG ??= " fdt gtk+"

EXTRA_OECONF = " \
    --prefix=${prefix} \
    --bindir=${bindir} \
    --includedir=${includedir} \
    --libdir=${libdir} \
    --mandir=${mandir} \
    --datadir=${datadir} \
    --docdir=${docdir}/${BPN} \
    --sysconfdir=${sysconfdir} \
    --libexecdir=${libexecdir} \
    --localstatedir=${localstatedir} \
    --with-confsuffix=/${BPN} \
    --disable-strip \
    --disable-werror \
    --extra-cflags='${CFLAGS}' \
    --enable-git-update \
    ${PACKAGECONFIG_CONFARGS} \
    "

