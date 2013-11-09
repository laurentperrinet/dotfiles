# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
	brew cask install "${@}" # 2> /dev/null
	#brew cask install --force "${@}" # 2> /dev/null
}
installcask bibdesk
installcask bit-torrent-sync
installcask clamxav 
installcask dropbox
installcask firefox
installcask google-chrome
#installcask google-chrome-canary
#installcask imagealpha
#installcask imageoptim
installcask iterm2
installcask macvim
installcask mactex
#installcask miro-video-converter
installcask open-office
installcask skype
installcask sparkleshare
installcask sourcetree
installcask spyder
#installcask sublime-text
installcask the-unarchiver
#installcask tor-browser
#installcask transmission
installcask tunnelblick unison
installcask ukelele
installcask virtualbox
installcask vlc
installcask x-quartz
