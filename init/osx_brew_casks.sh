# Install native apps
brew tap caskroom/cask
brew install brew-cask

brew cask install adobe-reader
brew cask install clamxav
brew cask uninstall bittorrent-sync
brew cask install owncloud
brew cask install dropbox
brew cask install wireshark
brew cask install java
brew cask install flash
brew cask install firefox
brew cask install thunderbird
brew cask install google-chrome
brew cask install iterm2
brew tap caskroom/fonts
brew cask install caskroom/fonts/font-symbola
brew cask install caskroom/fonts/font-inconsolata.
brew cask install openoffice
brew cask install skype
brew cask uninstall sparkleshare
brew cask install the-unarchiver
#brew cask install tor-browser
brew cask install tunnelblick
brew cask uninstall ukelele
brew cask install unison
brew cask uninstall vimediamanager
brew cask install vlc
brew cask install spectacle
brew cask install xquartz


# quick look plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package && qlmanage -r
defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder

brew tap caskroom/versions
brew cask install todotxt
# TeX suite
sh osx_install_tex_live.sh
# coding
brew cask install sourcetree
brew cask install spyder
sh osx_install_virtualbox.sh
brew cask install android-file-transfer
