#
# <https://github.com/Erope/openwrt_korami/>
# 
# Copyright (C) 2021 zPonds <admin@shinenet.cn>
# Copyright (C) 2020 KFERMercer <KFER.Mercer@gmail.com>
# Copyright (C) 2020 [CTCGFW] Project OpenWRT
# 
# THIS IS FREE SOFTWARE, LICENSED UNDER GPLv3.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-korami-agent
LUCI_TITLE:=LuCI support for korami agent
LUCI_DEPENDS:=+korami-agent
LUCI_PKGARCH:=all
PKG_VERSION:=3.0
PKG_RELEASE:=1
PKG_MAINTAINER:=<https://github.com/Erope/openwrt_korami/>

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
