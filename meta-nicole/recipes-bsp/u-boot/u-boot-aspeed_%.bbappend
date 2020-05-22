FILESEXTRAPATHS_append := "${THISDIR}/files:"

SRC_URI_append = " \
    file://0001-Add-system-reset-status-support.patch \
    file://0002-aspeed-add-gpio-support.patch \
    file://0003-aspeed-add-bmc-position-support.patch \
    "
