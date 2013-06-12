# fetch and install texlive

wget http://ctan.ijs.si/mirror/tlpretest/mactex-2013.pkg # pre-release of TexLive 2013
sudo installer -pkg mactex-2013.pkg -target /

# setting some preferences in TexShop
defaults write TeXShop NSUserKeyEquivalents -dict-add "Typeset" "@\\U21a9"
defaults write TeXShop "BibTeXengine" -string "biber"
defaults write TeXShop "Encoding"  -string  "IsoLatin"

# setting some preferences in BibDesk (see http://invibe.net/LaurentPerrinet/SciBlog/2013-03-06):
defaults write edu.ucsd.cs.mmccrack.bibdesk "Cite Key Format" -string "%p1%y%u0"
defaults write edu.ucsd.cs.mmccrack.bibdesk BDSKLocalFileFormatKey -string "%f{Cite Key}%n0%e"
defaults write edu.ucsd.cs.mmccrack.bibdesk "Path to the papers folder" -string "Biblio"
defaults write edu.ucsd.cs.mmccrack.bibdesk "Cite String" -string "citep"
defaults write edu.ucsd.cs.mmccrack.bibdesk "Cite Key Autogenerate" -int 1
defaults write edu.ucsd.cs.mmccrack.bibdesk "Cite Key Format Preset" -int 0
defaults write edu.ucsd.cs.mmccrack.bibdesk "Cite Prepend Tilde" -int 1
defaults write edu.ucsd.cs.mmccrack.bibdesk "Startup Behavior" -int 4