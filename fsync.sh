#!/bin/bash

############################################################
# PREPARE BUILD ENVIRONMENT                                #
############################################################

# Force break on error

set -e

#sudo cpufreq-set -g performance

# Remove modified source folders to force fresh sync

rm -rf ~/mallow/abi
rm -rf ~/mallow/art
rm -rf ~/mallow/bionic
rm -rf ~/mallow/bootable
rm -rf ~/mallow/build
rm -rf ~/mallow/cts
rm -rf ~/mallow/developers
rm -rf ~/mallow/development
rm -rf ~/mallow/dalvik
rm -rf ~/mallow/device
rm -rf ~/mallow/external
rm -rf ~/mallow/frameworks
rm -rf ~/mallow/hardware
rm -rf ~/mallow/kernel
rm -rf ~/mallow/libcore
rm -rf ~/mallow/libnativehelper
rm -rf ~/mallow/ndk
rm -rf ~/mallow/out
rm -rf ~/mallow/packages
rm -rf ~/mallow/pdk
rm -rf ~/mallow/platform_testing
rm -rf ~/mallow/prebuilts
rm -rf ~/mallow/sdk
rm -rf ~/mallow/system
rm -rf ~/mallow/tools
rm -rf ~/mallow/vendor
#rm -rf ~/mallow/.repo/projects/frameworks
#rm -rf ~/mallow/.repo/projects/kernel

############################################################
# SYNC LATEST SOURCE FILES AND DO CHERRY PICKS             #
############################################################

repo sync -j32

# chromium
#mkdir /home/moepda/mallow/prebuilts/chromium
#cp -a /home/moepda/chromium/hlte prebuilts/chromium
#cp -a /home/moepda/chromium/hltespr prebuilts/chromium
#cp -a /home/moepda/chromium/hltetmo prebuilts/chromium
#cp -a /home/moepda/chromium/hltevzw prebuilts/chromium

#~/mallow/cherry.sh

exit
