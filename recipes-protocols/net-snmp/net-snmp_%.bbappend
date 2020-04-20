FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
    file://0001-config_os_libs2-no-pci-lookup.patch \
"
