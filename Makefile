include $(TOPDIR)/rules.mk
	
LUCI_TITLE:=Web UI for atinout
LUCI_DEPENDS:=+atinout +luci-compat
PKG_VERSION:=1.2
PKG_LICENSE:=GPLv3
	
define Package/luci-app-atinout-mod/postrm
	rm -f /tmp/luci-indexcache
endef
	
include $(TOPDIR)/feeds/luci/luci.mk
	
# call BuildPackage - OpenWrt buildroot signature
