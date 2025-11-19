#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:18941228:68edd14da3211a7702f6935f31bd1ee0ec38ee3f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:15312168:1cbf58eadd3d0ae673c356ae00bae10e42c40bb2 EMMC:/dev/block/bootdevice/by-name/recovery 68edd14da3211a7702f6935f31bd1ee0ec38ee3f 18941228 1cbf58eadd3d0ae673c356ae00bae10e42c40bb2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
