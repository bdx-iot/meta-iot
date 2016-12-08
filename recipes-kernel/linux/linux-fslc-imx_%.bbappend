FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append_imx7s-warp += " \
	file://defconfig \
	file://0001-Add-new-dts-file-relay-board.patch \
	file://0002-Add-gpio-exporter-driver.patch \
	file://mcp4725-Add-basic-support-for-MCP4726.patch \
	"
KERNEL_DEVICETREE = " \
		imx7s-warp.dtb \
		imx7s-warp-relay.dtb \
		"
