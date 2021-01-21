packages=( brook tcping trojan-go trojan-plus ssocks )
luci_packages=( luci-app-passwall )

git -C ../ clone --depth 1 https://github.com/xiaorouji/openwrt-passwall lienol-packages
mkdir -p package/lienol

sed -i 's/$(STAGING_DIR_HOST)\/bin\/upx --lzma --best $(GO_PKG_BUILD_BIN_DIR)\/$(PKG_NAME)//g' ../lienol-packages/trojan-go/Makefile

for i in "${packages[@]}"
do
    mv ../lienol-packages/$i package/lienol/
done
for i in "${luci_packages[@]}"
do
    mv ../lienol-packages/$i package/lienol/
done
rm ../lienol-packages -rf

