# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
	brew cask install "${@}" # 2> /dev/null
	#brew cask install --force "${@}" # 2> /dev/null
}

installcask bibdesk
installcask mactex
installcask sourcetree
installcask spyder
installcask texshop
installcask virtualbox
