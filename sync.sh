#!/bin/bash

############################################################
# PREPARE BUILD ENVIRONMENT                                #
############################################################

# Force break on error

set -e

#sudo cpufreq-set -g performance

# Remove modified source folders to force fresh sync

rm -rf ~/mallow/frameworks
rm -rf ~/mallow/packages
#rm -rf ~/mallow/bionic
#rm -rf ~/mallow/libnativehelper
#rm -rf ~/mallow/libcore
#rm -rf ~/mallow/hardware
rm -rf ~/mallow/device
#rm -rf ~/mallow/system
#rm -rf ~/mallow/tools
rm -rf ~/mallow/kernel
#rm -rf ~/mallow/build
rm -rf ~/mallow/external
#rm -rf ~/mallow/bootable
#rm -rf ~/mallow/vendor
#rm -rf ~/mallow/.repo/projects/frameworks
#rm -rf ~/mallow/.repo/projects/kernel

############################################################
# SYNC LATEST SOURCE FILES AND DO CHERRY PICKS             #
############################################################

repo sync -j32

#~/mallow/cherry.sh

exit
