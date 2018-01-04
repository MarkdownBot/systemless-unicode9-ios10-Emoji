#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

#copy original fallback_fonts.xml to the MODDIR overriting the dummy file.
#cp /dev/magisk/mirror/system/etc/fallback_fonts.xml $MODDIR/system/etc

#comments the orgiginal NotoColorEmoji.ttf line inside fonts.xml (removes the line)
#sed -i 's/<font weight="400" style="normal">NotoColorEmoji.ttf<\/font>/<!-- <font weight="400" style="normal">NotoColorEmoji.ttf<\/font> -->/g' $MODDIR/system/etc/fonts.xml

#comments the orgiginal NotoColorEmoji.ttf line inside fallback_fonts.xml (removes the line)
#sed -i 's/<file>NotoColorEmoji.ttf<\/file>/\<!-- <file>NotoColorEmoji.ttf<\/file> -->/g' $MODDIR/system/etc/fallback_fonts.xml

#copy original fonts.xml to the MODDIR overriting the dummy file.
#cp /dev/magisk/mirror/system/etc/fonts.xml $MODDIR/system/etc

#changes the order of the original fonts.xml file
#sed -i 's/<!-- fallback fonts -->/<!-- fallback fonts edited by Magisk-ios10-Emoji-font module  --><family><font weight="400" style="normal">NotoColorEmoji.ttf<\/font><\/family>/g' $MODDIR/system/etc/fonts.xml

#changes the order of the original fonts.xml file
#sed -i 's/.*Note that aliases must come after the fonts they reference.*/<!--  Note that aliases must come after the fonts they reference. Edited by magisk ios10 emojifont --><family><font weight="400" style="normal">NotoColorEmoji.ttf<\/font><\/family><family><font weight="400" style="normal">SamsungColorEmoji.ttf<\/font><\/family><family><font weight="400" style="normal">hTC_ColorEmoji.ttf<\/font><\/family>/g' $MODDIR/system/etc/fonts.xml

#changes the order of the original fallback_fonts.xml file
#sed -i 's/<familyset>/<!-- fonts.xml edited by Magisk-ios10-Emoji-font module  --><familyset><familyset><family><fileset><file>NotoColorEmoji.ttf<\/file><\/fileset><\/family>/g' $MODDIR/system/etc/fallback_fonts.xml

#copies the original NotoColorEmoji and renames it to HTC & samsong emoji font replacing dummy file to reduce download size.
#cp $MODDIR/system/fonts/NotoColorEmoji.ttf $MODDIR/system/fonts/hTC_ColorEmoji.ttf
#cp $MODDIR/system/fonts/NotoColorEmoji.ttf $MODDIR/system/fonts/SamsungColorEmoji.ttf

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread
