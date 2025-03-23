#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Add mtkiappd support for 802.11 k/v/r
#svn export https://github.com/coolsnowwolf/lede/trunk/package/lean/mt/mtkiappd package/kernel/mt-drivers/mtkiappd
svn export https://github.com/elysianz/actions-immortalwrt-mtk-sdk-phicomm-k2p/tree/main/files/package/kernel/mt-drivers/mtkiappd package/kernel/mt-drivers/mtkiappd
