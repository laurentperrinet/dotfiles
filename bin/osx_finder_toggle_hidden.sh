#! /usr/bin/env osascript
# no restart needed: http://apple.stackexchange.com/questions/168540/show-hide-hidden-files-without-restarting-finder?newsletter=1&nlcode=57435|323e


set newHiddenVisiblesState to "YES"
try
    set oldHiddenVisiblesState to do shell script "defaults read com.apple.finder AppleShowAllFiles"
    if oldHiddenVisiblesState is in {"1", "YES"} then
        set newHiddenVisiblesState to "NO"
    end if
end try
do shell script "defaults write com.apple.finder AppleShowAllFiles " & newHiddenVisiblesState

tell application "Finder"
    set theWindows to every Finder window
    repeat with i from 1 to number of items in theWindows
        set this_item to item i of theWindows
        set theView to current view of this_item
        if theView is list view then
            set current view of this_item to icon view
        else
            set current view of this_item to list view

        end if
        set current view of this_item to theView
    end repeat
end tell
