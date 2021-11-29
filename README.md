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

The Second Way Virtual Box powered Linux
For the sake of the course we created all-set up iso file to use lcmodel on virtual box. First of all download the zip file of this repo. Unzip it and double-click to windows-install.bat. It will download the iso file and the VirtualBox and run the setup. Then follow the steps showed on the following GIF.  

![Alt Text](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/VBsetup.gif)


