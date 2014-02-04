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


# # creates a bootable image: see
# # http://forums.appleinsider.com/t/159955/howto-create-bootable-mavericks-iso
# 
# # Mount the installer image
# hdiutil attach /Applications/Install\ OS\ X\ Mavericks.app/Contents/SharedSupport/InstallESD.dmg -noverify -nobrowse -mountpoint /Volumes/install_app
# 
# # Convert the boot image to a sparse bundle
# hdiutil convert /Volumes/install_app/BaseSystem.dmg -format UDSP -o /tmp/Mavericks
# 
# # Increase the sparse bundle capacity to accommodate the packages
# hdiutil resize -size 8g /tmp/Mavericks.sparseimage
# 
# # Mount the sparse bundle for package addition
# hdiutil attach /tmp/Mavericks.sparseimage -noverify -nobrowse -mountpoint /Volumes/install_build
# 
# # Remove Package link and replace with actual files
# rm /Volumes/install_build/System/Installation/Packages
# cp -rp /Volumes/install_app/Packages /Volumes/install_build/System/Installation/
# 
# # Unmount the installer image
# hdiutil detach /Volumes/install_app
# 
# # Unmount the sparse bundle
# hdiutil detach /Volumes/install_build
# 
# # Resize the partition in the sparse bundle to remove any free space
# hdiutil resize -size `hdiutil resize -limits /tmp/Mavericks.sparseimage | tail -n 1 | awk '{ print $1 }'`b /tmp/Mavericks.sparseimage
# 
# # Convert the sparse bundle to ISO/CD master
# hdiutil convert /tmp/Mavericks.sparseimage -format UDTO -o /tmp/Mavericks
# 
# # Remove the sparse bundle
# rm /tmp/Mavericks.sparseimage
# 
# # Rename the ISO and move it to the desktop
# mv /tmp/Mavericks.cdr ~/Desktop/Mavericks.iso

# another solution: http://ntk.me/2012/09/07/os-x-on-os-x/
# uncomment to install IESD
## sudo gem install iesd
iesd -i /Applications/Install\ OS\ X\ Mavericks.app -o ~/Desktop/Mavericks.dmg -t BaseSystem
# On Mac Pro Early 2009 and other Macs that have ECC memory,
# AppleTyMCEDriver.kext will cause a kernel panic during the boot. Thus we need
# to remove it.
# iesd -i /Applications/Install\ OS\ X\ Mavericks.app -o Mavericks.dmg -t BaseSystem --remove-kexts AppleTyMCEDriver.kext


