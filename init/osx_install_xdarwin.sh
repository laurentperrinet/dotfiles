cd ~/Downloads
echo "> downloading xquartz on macosforge "
curl -OL http://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.4.dmg
echo "> mounting the image file "
hdiutil attach XQuartz-2.7.4.dmg
echo "> installing xquartz"
sudo installer -pkg /Volumes/XQuartz-2.7.4/XQuartz.pkg -target "/"
echo "> cleaning up"
umount /Volumes/XQuartz-2.7.4
rm -rf ~/Downloads/XQuartz-2.7.4.zip
echo "> installation finished "