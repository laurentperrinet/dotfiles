STATUS=`defaults read com.apple.finder AppleShowAllFiles`
if [ $STATUS == YES ]; 
then
    defaults write com.apple.finder AppleShowAllFiles NO
else
    defaults write com.apple.finder AppleShowAllFiles YES
fi
killall -HUP Finder