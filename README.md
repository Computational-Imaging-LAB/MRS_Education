# MRS Education

# We provide installation guides of LCModel for macOS, Linux and Windows. 
# <h1>Linux </h1> 
**Lets start with the easiest one Linux!**
##
*Firstly open a new terminal. Then copy-paste the commands highlighted below respectively.*

`sudo apt-get install git`

`git clone https://github.com/Computational-Imaging-LAB/MRS_Education.git`

`cd MRS_Education`

`bash manual-install`

*There will be a LCModel GUI pop-upped*

Then exit from that GUI after showing the plots.

We will set up PATH variable to reach lcmgui anywhere we want! Cool huh?

`PATH="$PATH:$HOME/.lcmodel/"`

Yoowwza! Everything is all set-up.
Now you can easily call lcmgui

`lcmgui`


# <h1>Windows </h1>

*There are three ways to install on Windows. If you are lazy -as me- you can use WSL2. If you prefer virtual machine you can use windows-install.bat file to install virtualbox and other things without harming your comfort. Then few steps by your own*
*There is a third way which is to downloading all the required tools by yourself manually. But forget about it don't do please.*

**The Second Way Virtual Box powered Linux**

For the sake of the course we created all-set up iso file to use lcmodel on virtual box. First of all download the zip file of this repo. Unzip it and double-click to windows-install.bat. It will download the iso file and the VirtualBox and run the setup. Then follow the steps showed on the following GIF.  

![Alt Text](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/VBsetup.gif)

##

After setting up the Virtual Box you should load iso file into virtualbox. Find the Virtual Box in your computer it should create a shortcut file on the desktop. Double-click it. 
After opening the VirtualBox get a deep breath and calm down you almost there!

Push the "File Button-(Dosya)" and then there will be drop-down menu opened like showed in the following screenshot. Select the "Import-(İçe Aktar)-The orange arrow". 
![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/8.png?raw=true)

After that push the folder icon to browse ovf file that windows-install.bat downloaded for you. It is MRS-CIL.ovf which is shown in the second ss. After push "Next-İleri" button. Then push "Import-İçe Aktar" button which is shown in following third ss. If everything is ok there will be a pop-up like in fourth ss for importing. 
![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/9.png?raw=true)
![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/11.png?raw=true)
![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/12.png?raw=true)
![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/13.png?raw=true)

Yowwzaa! You made it. Now only thing is starting the VM. Open VirtualBox and start the machine like in the following by pressing "Start-Başlat- Yellow arrow". After pressing a window will open wait until that window becomes like the following second ss. 

![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/14.png?raw=true)
![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/15.PNG?raw=true)

Now you can open lcmodel from that window.Click the window then press CTRL+ALT+T then type lcmgui on the terminal opened. 










