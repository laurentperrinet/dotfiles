sh osx_brew_bootstrap.sh
echo "> downloading pandoc "
brew tap phinze/homebrew-cask
brew install brew-cask
echo "> installing "
brew cask install pandoc
echo "> cleaning up"
brew cask cleanup
echo "> installation finished "