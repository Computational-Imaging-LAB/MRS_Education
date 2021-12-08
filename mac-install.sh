mkdir virtualbox
cd virtualbox
curl "https://download.virtualbox.org/virtualbox/6.1.30/VirtualBox-6.1.30-148432-OSX.dmg" -o virtualbox.dmg

echo "-----------------------------------"
echo "VirtualBox files have been downloaded"
echo "-----------------------------------"

echo "***********************************"
echo "VirtualBox image downloading has started"
curl "https://bounedutr-my.sharepoint.com/personal/abdullah_bas_boun_edu_tr/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fabdullah%5Fbas%5Fboun%5Fedu%5Ftr%2FDocuments%2Fvirtualbox%5Fvespa%2Erar&parent=%2Fpersonal%2Fabdullah%5Fbas%5Fboun%5Fedu%5Ftr%2FDocuments&download=1" -o mrs_cil.rar

echo "VirtualBox image has been downloaded"
unrar x  mrs_cil.rar

echo "-----------------------------------"
echo "VirtualBox image has been unzipped"

hdiutil attach virtualbox.dmg
echo "Please insert your password"
sudo installer -package /Volumes/VirtualBox/VirtualBox.pkg -target /
sudo hdiutil detach /Volumes/virtualbox.dmg

virtualbox
