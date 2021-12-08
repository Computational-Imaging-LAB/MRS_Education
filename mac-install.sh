mkdir virtualbox
cd virtualbox
curl https://download.virtualbox.org/virtualbox/6.1.30/VirtualBox-6.1.30-148432$

echo "-----------------------------------"
echo "VirtualBox files have been downloaded"
echo "-----------------------------------"

echo "***********************************"
echo "VirtualBox image downloading has started"
curl "https://bounedutr-my.sharepoint.com/:u:/g/personal/abdullah_bas_boun_edu_$

echo "VirtualBox image has been downloaded"
unrar x  mrs_cil.rar

echo "-----------------------------------"
echo "VirtualBox image has been unzipped"

hdiutil attach virtualbox.dmg
echo "Please insert your password"
sudo installer -package /Volumes/VirtualBox/VirtualBox.pkg -target /
sudo hdiutil detach /Volumes/virtualbox.dmg

virtualbox
