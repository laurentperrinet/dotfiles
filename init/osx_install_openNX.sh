mkdir -p ~/.nx/config ; cd ~/.nx/config ; curl -OL http://fichiers.intlocal.univ-amu.fr/macosx/nx/frioul.nxs
cd ~/Downloads ; curl -OL http://fichiers.intlocal.univ-amu.fr/macosx/nx/openNX-0.16.0.724.zip
unzip ~/Downloads/openNX-0.16.0.724.zip -d ~/Downloads/OpenNX
sudo installer -pkg ~/Downloads/OpenNX/OpenNX.pkg -target "/" ; rm -rf ~/Downloads/OpenNX ; rm -rf ~/Downloads/openNX-0.16.0.724.zip