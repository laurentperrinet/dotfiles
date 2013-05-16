# fetch and install texlive
unzip ~/ownCloud/soft/MacTeX.mpkg.zip 
sudo installer -pkg /Users/love/ownCloud/soft/MacTeX.mpkg -target /

# setting some preferences in bibdesk (see http://invibe.net/LaurentPerrinet/SciBlog/2013-03-06):
defaults write edu.ucsd.cs.mmccrack.bibdesk "Cite Key Format" -string "%a1%y%u0"
defaults write edu.ucsd.cs.mmccrack.bibdesk BDSKLocalFileFormatKey -string "%f{Cite Key}%n0%e"
defaults write edu.ucsd.cs.mmccrack.bibdesk "Path to the papers folder" -string "Biblio"
defaults write edu.ucsd.cs.mmccrack.bibdesk "Cite String" -string "citep"
defaults write edu.ucsd.cs.mmccrack.bibdesk "Cite Key Autogenerate" -int 1
defaults write edu.ucsd.cs.mmccrack.bibdesk "Cite Key Format Preset" -int 0
defaults write edu.ucsd.cs.mmccrack.bibdesk "Cite Prepend Tilde" -int 1
defaults write edu.ucsd.cs.mmccrack.bibdesk "Startup Behavior" -int 4