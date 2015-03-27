# homebrew style install
echo "Latest :"
curl http://download.virtualbox.org/virtualbox/LATEST.TXT | cat
eval VERSION=`curl http://download.virtualbox.org/virtualbox/LATEST.TXT`
# Install native apps
brew tap caskroom/cask
brew install brew-cask
brew cask install virtualbox
curl -sSL http://download.virtualbox.org/virtualbox/$VERSION/Oracle_VM_VirtualBox_Extension_Pack-$VERSION.vbox-extpack -o /tmp/vboxextras.vbox-extpack
VBoxManage extpack install /tmp/vboxextras.vbox-extpack

# following http://ntk.me/2012/09/07/os-x-on-os-x/
# uncomment to install IESD
# sudo gem install iesd
# iesd -i /Applications/Install\ OS\ X\ Mavericks.app -o ~/Desktop/Mavericks.dmg -t BaseSystem

# On Mac Pro Early 2009 and other Macs that have ECC memory,
# AppleTyMCEDriver.kext will cause a kernel panic during the boot. Thus we need
# to remove it.
# iesd -i /Applications/Install\ OS\ X\ Mavericks.app -o Mavericks.dmg -t BaseSystem --remove-kexts AppleTyMCEDriver.kext


