

############################################################
# PREPARE BUILD ENVIRONMENT                                   #
############################################################


# Turn off break on error to allow build process to run
set +e

############################################################
# BUILD THE ROM                                            #
############################################################                                     


# Start build process

. build/envsetup.sh

#export USE_PREBUILT_CHROMIUM=1

time lunch && make clobber && time make -j16 OmniSwitch

exit
