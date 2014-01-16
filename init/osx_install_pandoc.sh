echo "> downloading pandoc "
curl -OL https://pandoc.googlecode.com/files/pandoc-1.12.3.pkg.zip
unzip pandoc-1.12.3.pkg.zip
#http://pandoc.googlecode.com/files/pandoc-1.12.dmg
#echo "> mounting the image file "
#hdiutil attach pandoc-1.12.dmg
echo "> installing "
sudo installer -pkg pandoc-1.12.3.pkg -target "/"
echo "> cleaning up"
#umount /Volumes/pandoc\ 1.12
rm -f pandoc-1.12.*
echo "> installation finished "