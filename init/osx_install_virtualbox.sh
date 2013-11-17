# OLD style
#cd /tmp
#wget http://download.virtualbox.org/virtualbox/4.2.18/VirtualBox-4.2.18-88780-OSX.dmg
#hdiutil attach VirtualBox-4.2.18-88780-OSX.dmg
#sudo installer -pkg /Volumes/VirtualBox/VirtualBox.pkg -target /
#hdiutil detach /Volumes/VirtualBox
# NEW homebrew style install
# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask
brew cask install virtualbox
