sh osx_brew_bootstrap.sh
echo "> downloading pandoc "
echo "> installing "
brew install pandoc
echo "> cleaning up"
brew cask cleanup
echo "> installation finished "