mkdir virtualbox
cd virtualbox
curl "https://download.virtualbox.org/virtualbox/6.1.30/VirtualBox-6.1.30-148432-OSX.dmg" -o virtualbox.dmg

echo "-----------------------------------"
echo "VirtualBox files have been downloaded"
echo "-----------------------------------"

echo "***********************************"
echo "VirtualBox image downloading has started"
wget -q --show-progress "https://bounedutr-my.sharepoint.com/:u:/g/personal/abdullah_bas_boun_edu_tr/Edkpj8CNFthFsHEjeckH54wBjjbkUr-hCWSG9RXnqQVw3Q?e=523wHz&download=1" -o mrs_cil.zip

echo "VirtualBox image has been downloaded"
unzip x  mrs_cil.zip

echo "-----------------------------------"
echo "VirtualBox image has been unzipped"

hdiutil attach virtualbox.dmg
echo "Please insert your password"
sudo installer -package /Volumes/VirtualBox/VirtualBox.pkg -target /
sudo hdiutil detach /Volumes/virtualbox.dmg

virtualbox
