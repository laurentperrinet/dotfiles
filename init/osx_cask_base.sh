# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
	brew cask install "${@}" # 2> /dev/null
	#brew cask install --force "${@}" # 2> /dev/null
}
installcask clamxav 
installcask dropbox
installcask firefox
installcask google-chrome
installcask iterm2
installcask macvim
installcask open-office
installcask skype
installcask sparkleshare
installcask the-unarchiver
#installcask tor-browser
installcask tunnelblick unison
installcask ukelele
installcask vlc
installcask x-quartz
