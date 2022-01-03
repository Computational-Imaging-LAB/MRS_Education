

echo "This process may take 3-5 hours (~12gb) depends on your internet connection. Wait until the finish. It will not output any progressbar in order to make things faster. There will be a prompt after finishing the download"


$ProgressPreference = 'SilentlyContinue'
wget  "https://bounedutr-my.sharepoint.com/:u:/g/personal/abdullah_bas_boun_edu_tr/EXNeyaVOjqNFjEmA7NIWWGsBAu3lOBcGNzzmJojlURUZWQ?e=3XWHTA&download=1" -OutFile requested.zip 
$ProgressPreference = 'Continue'

echo "Download has finished."


Expand-Archive requested.zip -DestinationPath requested_image
wget https://download.virtualbox.org/virtualbox/6.1.30/VirtualBox-6.1.30-148432-Win.exe -OutFile virtualbox.exe
.\virtualbox.exe




