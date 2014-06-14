rm -rf "$(brew --cache)"
brew update

for app in $(brew cask list); do
    brew cask install --force "${app}"
done