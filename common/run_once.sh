#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed once during installation
# It is called inside the `set_permissions` function in `config.sh`

#copy original fonts.xml to the MODDIR.
cp /dev/magisk/mirror/system/etc/fonts.xml $MODDIR/system/etc

#copy original fallback_fonts.xml to the MODDIR.
cp /dev/magisk/mirror/system/etc/fallback_fonts.xml $MODDIR/system/etc

  ui_print "copied xml files"
  
