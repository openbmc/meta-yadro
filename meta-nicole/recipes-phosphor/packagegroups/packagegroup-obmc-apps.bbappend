RDEPENDS_${PN}-inventory_append = " openpower-occ-control"
RDEPENDS_${PN}-extras_append = " \
    obmc-yadro-lsinventory \
    obmc-yadro-lssensors \
    openpower-esel-parser \
    phosphor-hostlogger \
"
RDEPENDS_${PN}-software_append = " \
    obmc-yadro-fwupdate \
    phosphor-image-signing \
"
