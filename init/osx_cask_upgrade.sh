rm -rf "$(brew --cache)"
brew cleanup
brew cask cleanup
brew update

for app in $(brew cask list); do
    brew cask install --force "${app}"
done