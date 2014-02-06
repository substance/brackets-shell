#!/bin/bash
ICONSET=appshell.iconset
TEMPLATE=../res/appshell128.png

mkdir $ICONSET
sips -z 16 16     $TEMPLATE --out $ICONSET/icon_16x16.png
sips -z 32 32     $TEMPLATE --out $ICONSET/icon_16x16@2x.png
sips -z 32 32     $TEMPLATE --out $ICONSET/icon_32x32.png
sips -z 64 64     $TEMPLATE --out $ICONSET/icon_32x32@2x.png
sips -z 128 128   $TEMPLATE --out $ICONSET/icon_128x128.png
sips -z 256 256   $TEMPLATE --out $ICONSET/icon_128x128@2x.png
cp $TEMPLATE $ICONSET/icon_256x256.png
iconutil -c icns --output appshell.icns $ICONSET
rm -R $ICONSET
