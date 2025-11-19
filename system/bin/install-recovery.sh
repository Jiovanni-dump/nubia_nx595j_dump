#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:19019052:4f4f43091ef33fde024c44928a909bbd9324768c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:15316264:fd5fe32cd8281d4a97210da88ab03e84b5e9ab0e EMMC:/dev/block/bootdevice/by-name/recovery 4f4f43091ef33fde024c44928a909bbd9324768c 19019052 fd5fe32cd8281d4a97210da88ab03e84b5e9ab0e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
