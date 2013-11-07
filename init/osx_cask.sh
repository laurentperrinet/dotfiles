# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
	brew cask install "${@}" # 2> /dev/null
	#brew cask install --force "${@}" # 2> /dev/null
}

installcask clamxav 
installcask dropbox
installcask google-chrome
#installcask google-chrome-canary
#installcask imagealpha
#installcask imageoptim
installcask iterm2
installcask macvim
#installcask miro-video-converter
installcask open-office
installcask sparkleshare
installcask spyder
#installcask sublime-text
installcask the-unarchiver
#installcask tor-browser
#installcask transmission
installcask ukelele
installcask virtualbox
installcask vlc
