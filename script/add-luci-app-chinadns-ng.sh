mkdir -p package/chinadns-ng
git -C package/chinadns-ng clone --depth 1 https://github.com/pexcn/openwrt-chinadns-ng.git -b luci luci-app-chinadns-ng
rm -rf package/chinadns-ng/luci-app-chinadns-ng/root/etc/init.d
rm -rf package/chinadns-ng/luci-app-chinadns-ng/root/etc/config/chinadns-ng
rm -f package/chinadns-ng/luci-app-chinadns-ng/root/etc/chinadns-ng/chinalist.txt
rm -f package/chinadns-ng/luci-app-chinadns-ng/root/etc/chinadns-ng/chnroute.txt
rm -f package/chinadns-ng/luci-app-chinadns-ng/root/etc/chinadns-ng/chnroute6.txt
rm -f package/chinadns-ng/luci-app-chinadns-ng/root/etc/chinadns-ng/gfwlist.txt
