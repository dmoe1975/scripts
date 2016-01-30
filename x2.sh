

############################################################
# PREPARE BUILD ENVIRONMENT                                   #
############################################################


# Turn off break on error to allow build process to run
set +e

############################################################
# BUILD THE ROM                                            #
############################################################                                     

# Turn on compiler caching

export USE_CCACHE=1
export USE_PREBUILT_CACHE=1
#export CCACHE_DIR=/media/moepda/unicorns/.ccache

prebuilts/misc/linux-x86/ccache/ccache -M 30G

# Start build process

export DU_BUILD_TYPE=TEST

#export DU_BUILD_TYPE=TESTBUILD
#export KBUILD_BUILD_USER=user
#export KBUILD_BUILD_HOST=host

#export USE_PREBUILT_CHROMIUM=1

export OUT_DIR_COMMON_BASE=/media/moepda/unicorns

. build/envsetup.sh && lunch du_shamu-userdebug && make clobber
time make -j16 bacon

# Copy build from du out folder to mod folder

#cp ~/du/out/target/product/hlte/*-TESTBUILD.zip /media/moepda/unicorns/unicorns

#rm -rf ~/du/out/target/product/hlte

#cd ~/du && make clobber

cp /media/moepda/unicorns/mallow/target/product/shamu/*-TEST.zip /media/moepda/unicorns/unicorns

rm -rf /media/moepda/unicorns/mallow/target/product/shamu
rm -rf /media/moepda/unicorns/mallow/target/product/device/samsung/shamu
rm -rf /media/moepda/unicorns/mallow

#cd /media/moepda/unicorns/du/out/du && make clobber

# Notify user of success

echo 'du-shamu has moved to the land of unicorns so your finished building !!'

#~/mallow/x1.sh

exit
