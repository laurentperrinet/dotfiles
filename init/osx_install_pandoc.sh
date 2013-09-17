echo "> downloading pandoc "
curl -OL http://pandoc.googlecode.com/files/pandoc-1.12.dmg
echo "> mounting the image file "
hdiutil attach pandoc-1.12.dmg
echo "> installing "
sudo installer -pkg /Volumes/pandoc\ 1.12/pandoc-1.12.pkg -target "/"
echo "> cleaning up"
umount /Volumes/pandoc\ 1.12
rm -rf pandoc-1.12.dmgndoc-1.12.dmg
echo "> installation finished "