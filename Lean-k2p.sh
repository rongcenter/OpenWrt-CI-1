#修改版本号
#sed -i 's/OpenWrt/BGG $(TZ=UTC-8 date "+%Y.%m.%d")' package/lean/default-settings/files/zzz-default-settings

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

#使用源码自带ShadowSocksR Plus+出国软件
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

#git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
#git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
#rm -rf package/lean/xray
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/xray package/xray
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
#git clone https://github.com/Mattraks/helloworld.git package/luci-app-ssr-plus
git clone https://github.com/8688Add/luci-app-adbyby-plus-special.git package/luci-app-adbyby-plus-ram_edition-special
#rm -rf package/lean/luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
#rm -rf package/lean/mt
#svn co https://github.com/0118Add/lede/trunk/package/lean/mt package/lean/mt
rm -rf package/lean/luci-app-frpc
git clone https://github.com/8688Add/luci-app-frpc-mod.git package/lean/luci-app-frpc
chmod 0755 package/lean/luci-app-frpc/root/etc/init.d/frp
rm -rf package/lean/luci-app-unblockmusic
svn co https://github.com/project-openwrt/openwrt/trunk/package/lean/luci-app-unblockmusic package/lean/luci-app-unblockmusic
#svn co https://github.com/Mattraks/helloworld/trunk/luci-app-ssr-plus package/lean/luci-app-ssr-plus
#svn co https://github.com/Mattraks/helloworld/trunk/tcping package/lean/tcping

# 修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-sfe/po/zh-cn/sfe.po
#sed -i 's/"ShadowSocksR Plus+"/"SSR Plus+"/g' package/lean/luci-app-ssr-plus/luasrc/controller/shadowsocksr.lua
#sed -i 's/"解锁网易云灰色歌曲"/"解锁网易云音乐"/g' package/lean/luci-app-unblockmusic/po/zh-cn/unblockmusic.po
