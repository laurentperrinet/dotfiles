# Easily compiles and configures a MPD server

# first install the daemon
#brew install mpd

mkdir -p ~\.mpd
mkdir -p ~/.mpd/playlists
touch ~/.mpd/database
echo "music_directory "/Volumes/Multimedia/musique"
playlist_directory "~/.mpd/playlists"
db_file "~/.mpd/database"
log_file "~/.mpd/log"
pid_file "~/.mpd/pid"
state_file "~/.mpd/state"
sticker_file "~/.mpd/sticker.sql"
auto_update "yes"
auto_update_depth "2"
follow_outside_symlinks "yes"
follow_inside_symlinks "yes"
audio_output {
    type "osx"
    name "CoreAudio"
	mixer_type "software"
}
	" > .mpdconf

# let's run it once to scan the library
mpd --kill
mpd
mpc update
mpd --kill

# let's launch everytime we log on
echo "<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
	    <string>com.wikia.mpd</string>
	    <key>WorkingDirectory</key>
	    <string>~</string>
	    <key>ProgramArguments</key>
	    <array>
	        <string>/usr/local/bin/mpd</string>
	        <string>--no-daemon</string>
	        <string>~/.mpdconf</string>
	    </array>
	    <key>EnableGlobbing</key>
	    <true/>
	    <key>RunAtLoad</key>
	    <true/>
	    <key>KeepAlive</key>
	    <true/>
	</dict>
	</plist>
" > ~/Library/LaunchAgents/com.wikia.mpd.plist

# update
launchctl load ~/Library/LaunchAgents

#check
launchctl list

## scrobbling with mpdas
#brew install mpdas
# Then create the file ~/.mpdasrc, and add the following lines:
#echo"
#username = my_lastfm_username
#password = 02a264fb6696ea24d264d56724642d6b " > ~/.mpdasrc
#	 The password field is the md5 hash of your password.
#	  md5 -s my_lastfm_password
#	Now start up mpdas as a daemon with your config file.
# mpdas -d -c ~/.mpdasrc
