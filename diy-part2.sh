#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Alist
rm -rf feeds/packages/lang/golang
svn export https://github.com/sbwml/packages_lang_golang/branches/19.x feeds/packages/lang/golang


# 打倒美帝全部调到VPN菜单
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-ssr-plus/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/*.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-ssr-plus/luasrc/view/shadowsocksr/*.htm

sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-passwall/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-passwall/luasrc/model/cbi/passwall/api/*.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-passwall/luasrc/model/cbi/passwall/client/*.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-passwall/luasrc/model/cbi/passwall/server/*.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-passwall/luasrc/view/passwall/app_update/*.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-passwall/luasrc/view/passwall/global/*.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-passwall/luasrc/view/passwall/haproxy/*.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-passwall/luasrc/view/passwall/log/*.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-passwall/luasrc/view/passwall/node_list/*.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-passwall/luasrc/view/passwall/rule/*.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-passwall/luasrc/view/passwall/server/*.htm

sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-vssr/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-vssr/luasrc/model/cbi/vssr/*.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-vssr/luasrc/view/vssr/*.htm

sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-openclash/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-openclash/luasrc/*.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-openclash/luasrc/model/cbi/openclash/*.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-openclash/luasrc/view/openclash/*.htm
