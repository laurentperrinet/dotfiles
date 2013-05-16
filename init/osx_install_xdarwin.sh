cd ~/Downloads 
curl -OL http://fichiers.intlocal.univ-amu.fr/macosx/xquartz/XQuartz-2.7.4.zip
unzip ~/Downloads/XQuartz-2.7.4.zip -d ~/Downloads/XQuartz
sudo installer -pkg ~/Downloads/XQuartz/XQuartz.pkg -target "/" 
rm -rf ~/Downloads/XQuartz
rm -rf ~/Downloads/XQuartz-2.7.4.zip