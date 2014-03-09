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

# following http://ntk.me/2012/09/07/os-x-on-os-x/
# uncomment to install IESD
sudo gem install iesd
iesd -i /Applications/Install\ OS\ X\ Mavericks.app -o ~/Desktop/Mavericks.dmg -t BaseSystem

# On Mac Pro Early 2009 and other Macs that have ECC memory,
# AppleTyMCEDriver.kext will cause a kernel panic during the boot. Thus we need
# to remove it.
# iesd -i /Applications/Install\ OS\ X\ Mavericks.app -o Mavericks.dmg -t BaseSystem --remove-kexts AppleTyMCEDriver.kext


