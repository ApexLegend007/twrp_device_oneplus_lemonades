# Device Tree for 9R (lemonades) for TWRP

## Setup repo tool
Setup repo tool from here https://source.android.com/setup/develop#installing-repo

##Sync TWRP manifest:

```
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1

```

## You might need to cherry-pick patches from gerrit.twrp.me to get some stuff working.

1:= https://gerrit.twrp.me/c/android_system_update_engine/+/5759

2:= https://gerrit.twrp.me/c/android_bootable_recovery/+/5691

3:= https://gerrit.twrp.me/c/android_build/+/5445

## Below is an optional Cherry-pick For the device if you want to add it

4:= https://gerrit.twrp.me/c/android_system_core/+/5658 

## Make a directory named local_manifest under .repo, and create a new manifest file, for example local_manifests.xml and then paste the following

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project path="device/oneplus/lemonades" name="ApexLegend007/twrp_device_oneplus_lemonades" remote="github" revision="android-12.1" />
</manifest>
```

## Sync the sources with

```
repo sync -j$(nproc --all)
```

## To compile Recovery, execute this command:

```
. build/envsetup.sh; export ALLOW_MISSING_DEPENDENCIES=true; export LC_ALL=C; lunch twrp_lemonades-eng; make -j$(nproc --all) adbd recoveryimage
```

## To test it:

```
# To temporarily boot it
fastboot boot out/target/product/lemonades/recovery.img 

# Since 9R has a separate recovery partition, you can flash the recovery with
fastboot flash recovery recovery.img
```

Kernel: https://github.com/oneplusoss/android_kernel_oneplus_sm8250

##### Credits
- The-Incognito For Recovery Trees of Oneplus 8T
- YumeMichi For Implementing Erofs and Other Misc
- bigbiff for decryption
- osm0sis for OOS Flashing support
- Systemad for original tree
- CaptainThrowback for original tree
- mauronofrio for original tree
- TWRP team
- Qnorsten for OOS Flashing Fix
