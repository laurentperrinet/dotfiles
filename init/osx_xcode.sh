# TODO: finish this!
cd /tmp
wget http://adcdownload.apple.com//Developer_Tools/xcode_3.2.6_and_ios_sdk_4.3__final/xcode_3.2.6_and_ios_sdk_4.3.dmg
hdiutil attach xcode_3.2.6_and_ios_sdk_4.3.dmg
sudo installer -pkg /Volumes/VirtualBox/VirtualBox.pkg -target /
hdiutil detach /Volumes/VirtualBox
