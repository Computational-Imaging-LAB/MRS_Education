mkdir virtualbox
cd virtualbox
curl "https://download.virtualbox.org/virtualbox/6.1.30/VirtualBox-6.1.30-148432-OSX.dmg" -o virtualbox.dmg

echo "-----------------------------------"
echo "VirtualBox files have been downloaded"
echo "-----------------------------------"

echo "***********************************"
echo "VirtualBox image downloading has started"
FILE="mrs_cil.zip"

if test -f "$FILE"; then
    echo "$FILE exists. Download has been passed. What a luck!"
else
    echo "Virtual machine files couldn't find. Download is started"
    wget -q --show-progress "https://bounedutr-my.sharepoint.com/:u:/g/personal/abdullah_bas_boun_edu_tr/ERb41oKy9i9DlWY5BFesmI8BKesME-JLtpckhqcV_ElWKQ?e=c7A8nK&download=1" -O mrs_cil.zip
fi

echo "VirtualBox image has been downloaded"
unzip  mrs_cil

echo "-----------------------------------"
echo "VirtualBox image has been unzipped"

hdiutil attach virtualbox.dmg
echo "Please insert your password"
sudo installer -package /Volumes/VirtualBox/VirtualBox.pkg -target /
sudo hdiutil detach /Volumes/virtualbox.dmg

virtualbox
