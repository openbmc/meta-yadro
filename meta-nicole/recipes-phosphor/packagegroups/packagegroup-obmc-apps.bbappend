RDEPENDS_${PN}-inventory_append = " openpower-occ-control"
RDEPENDS_${PN}-extras_append = " \
    phosphor-hostlogger \
    openpower-esel-parser \
"
RDEPENDS_${PN}-software_append = " \
    obmc-yadro-fwupdate \
    phosphor-image-signing \
"
