# MRS Eğitimi

# MRS eğitimi için gereken LCModel-VESPA ve diğer yazılımların gerekliliklerini yüklemek için gereken yükleme rehberi. Rehberde macOS, Linux ve Windows için yükleme adımları gösterilmiştir.

# Yüklemeler

   * [Linux Installation](#linux)
      * LCModel anahtarı 210387309
   * [Windows Installation](#windows)
      * VM şifresi 123456789
      * LCModel anahtarı 210387309
   * [macOS Installation](#macos)
      * LCModel anahtarı 210387309
      * VM şifresi 123456789



## <h1>Linux</h1> <a name="linux"></a>
##
*Öncelikle yeni bir terminal açın ve aşağıdaki kodları sırasıyla terminale kopyalayıp çalıştırın.*

`sudo apt-get install git`

`git clone https://github.com/Computational-Imaging-LAB/MRS_Education.git`

`cd MRS_Education`

`bash manual-install`

*LCModel GUI'si gözükecektir.*

GUI gözüktükten sonra GUI penceresini kapatıp çıkın.

PATH değişkenini ayarlayarak lcmgui koduna her yerden ulaşılabilecek konuma getirin.

`PATH="$PATH:$HOME/.lcmodel/"`

`touch  $HOME/.lcmodel/license`

Yükleme başarıyla tamamlanmıştır.

LCModel'ı kolayca terminale lcmgui yazarak çalıştırabilirsiniz.

`lcmgui`

# Eğer  manuel yükleme aşamaları ile uğraşmak istemiyorsanız sağladığımız kodları kullanabilirsiniz. Eğer manuel yüklemek istiyorsanız bir sonraki başlığı takip edin.

Öncelikle aşağıdaki kodu çalıştırın. Yükleme esnasında terminal sizden girdi bekleyecektir. Bu nedenle bitirene kadar terminal karşısında bekleyin (5-10 dk).

`bash req-install.sh`

Yükleme bittikten sonra açık olan terminalleri kapatın. Kapattıktan sonra tekrar açıp aşağıdaki kodu çalıştırın.

`conda activate mrs_course`

eğer herhangi bir hata gözükmüyorsa vespayı yüklemek için aşağıdaki kodu çalıştırın. 

`bash vespa-install.sh`

Yükleme bittikten sonra yüklemeyi kontrol etmek adına aşağıdaki kodu çalıştırın.

`python -m vespa.check_dependencies`

Terminali kapatıp açtıktan sonra kullanmaya başlayabilirsiniz. Linux için tüm yükleme adımları bu kadardır. WSL ve Ubuntu 20.04 üzerinde denenmiştir. Eğer herhangi bir hata ile karşılaşırsanız email gönderebilir ya da sorunlar sayfasından yeni bir sorun açabilirsiniz.


# Eğer sağladığımız kodları kullanmadan manuel yüklemek istiyorsanız aşağıdaki kodları sırasıyla kopyalarak devam edin.

`wget -q --show-progress https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh`
    
`bash Miniconda3-latest-Linux-x86_64.sh`  -- Choosing the default path is recommended. If you change the installation path please save it for next steps. 

`conda --init`

Terminali kapatıp yeni bir terminal açın 

`echo "deb http://cz.archive.ubuntu.com/ubuntu bionic main universe" |  sudo tee -a /etc/apt/sources.list`

`sudo apt-get update && sudo apt-get upgrade`

`sudo apt install make gcc libgtk-3-dev libwebkitgtk-dev libwebkitgtk-3.0-dev libgstreamer-gl1.0-0 freeglut3 /
                      freeglut3-dev python-gst-1.0 python3-gst-1.0 libglib2.0-dev ubuntu-restricted-extras /
                      libgstreamer-plugins-base1.0-dev`

`conda create --name mrs_course python=3.7`

`conda activate mrs_course`

`conda install numpy scipy matplotlib wxpython configobj packaging`

`conda install -c conda-forge lmfit pydicom pypubsub`

`pip install pygamma vespa-suite` - You must have pip install if you dont have then type `sudo apt-get install python3-pip`

Vespa bağlılıklarını kontrol etmek için aşağıdaki kodu çalıştırın.

`python -m vespa.check_dependencies`

Eğer herşey doğru gözüküyorsa geriye sadece dizin işlemleri kalıyor.

`sudo apt-get install mlocate`

`path=`locate vespa/analysis/main.py``

`echo "alias vespa_analysis='python $path'" |  sudo tee -a ~/.bashrc`

`path=`locate vespa/datasim/main.py``

`echo "alias vespa_datasim='python $path'" |  sudo tee -a ~/.bashrc`

`path=`locate vespa/pulse/main.py``

`echo "alias vespa_pulse='python $path'" |  sudo tee -a ~/.bashrc`

`path=`locate vespa/simulation/main.py``

`echo "alias vespa_simulation='python $path'" |  sudo tee -a ~/.bashrc`



## <h1>Windows</h1> <a name="windows"></a>

*Windows için yükleme yapmak adına sağladığımız windows-install.ps1 dosyasını kullanabilirsiniz. 
.*

**Virtual Box üzerinde Linux**

Eğitimin daha düzenli olması adına tüm gerekliliklerin yüklü olduğu iso dosyası yaratılmıştır. 
**İlk olarak bu reponun zip dosyasını indirin.**

Zip dosyasını aşağıdaki GIF'de gösterildiği gibi indirebilirsiniz.

![zip](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/mrs-ss/zipdownload.gif)

##

##
Zip dosyasını indirdikten sonra unzip ederek windows-install.ps1 dosyasına sağ tıklayıp "Powershell ile çalıştır" seçeneğine tıklayın. Bu dosya gerekli olan tüm bileşenleri yükledikten sonra setup işlemini başlatacaktır. Bu noktada setup işlemine nasıl devam edileceği ilerleyen GIF ile gösterilmiştir.

##

![Alt Text](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/VBsetup.gif)

##

Virtual Box kurulumunu tamamladıktan sonra gerekli olan iso dosyasını Virtual Box içerisine yüklemeniz gerekmektedir. Bunu yapmak için VirtualBox programını çift tıklayarak açın. Aşağıdaki ekran görüntüsü gibi olan arayüz açılınca 
 
 1- "Dosya" butonuna tıklayın. 
 2-  Açılan menüden "İçe Aktar" seçeneğine tıklayın
 3-  İlk adımda indirdiğiniz ZIP dosyasının dizininde requested-image içerisinde ikinci ekran görüntüsünde gösterildiği gibi MRS-CIL.ovf dosyasını bulun.
 4-  Sonra "İleri" butonuna tıklayın.
 5-  3. ekran görüntüsündeki gibi "İçe Aktar" butonuna tıklayın. 
 6-  Eğer herşey doğru ise 4. ekran görüntüsü gösterilecektir.

![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/8.png?raw=true)


![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/9.png?raw=true)
![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/11.png?raw=true)
![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/12.png?raw=true)
![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/13.png?raw=true)


Herhangi bir sorun yoksa VM hazır hale getirilmiş demektir. Sırada kurulan sanal makineyi başlatma işlemi bulunmaktadır. Aşağıdaki 1. ekran görüntüsünde gösterildiği gibi "Başlat" tıklandığında 2. ekran görüntüsü gibi ekran gelecektir. Tüm işlemler bu kadardır.


![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/14.png?raw=true)
![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/VirtualBox_ss/15.PNG?raw=true)

Açılan pencerede CTRL+ALT+T bastıktan sonra terminali açın. lcmgui yazdıktan sonra LCModel açılacaktır. 

# <h1>macOS</h1> <a name="macos"></a>


*Here is the final OS. It will be easy don't worry. Firstly we will start by cloning the repo.*

If you dont have homebrew installed then type the following;

`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

After that we need git and wget to run our script. Hence install them also. 

`brew install git` 

`brew install wget`

`git clone https://github.com/Computational-Imaging-LAB/MRS_Education.git`

`cd MRS_Education`

`bash mac-install.sh`


After that, push the folder icon to browse ovf file that mac-install.sh downloaded for you. It is MRS-CIL.ovf which is shown in the second ss. After push "Next-İleri" button. Then push "Import-İçe Aktar" button which is shown in following third ss. If everything is ok there will be a pop-up like in fourth ss for importing. 

Step by step. Firstly, after our script finishes its job -nearly 3 hour on an average network- you will see a GUI of VirtualBox like the following:

![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/mrs-ss/1.png?raw=true)

After that you should import our VM into VirtualBox. You can find and add it as follows:

![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/mrs-ss/2.png?raw=true)
.
.
![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/mrs-ss/3.png?raw=true)
.
.
![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/mrs-ss/4.png?raw=true)
.
.
![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/mrs-ss/5.png?raw=true)


After doing all those steps it will import -roughly 5-10 mins- VM into VirtualBox. If everything is ok then you should see a window like the following. Afterwards push the green arrow to start the VM. It will open a window when VM starts, then it will become as second ss. If you cant reach here please open an issue.:

![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/mrs-ss/6.png?raw=true)

Second ss

![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/mrs-ss/8.png?raw=true)

Now you can open lcmodel from that window.Click the window then press CTRL+ALT+T then type lcmgui on the terminal opened. 


# IMPORTANT 

After making everything right you can face some privacy issues -because it is MAC-. For example if you face an error -probably you will- when you try to start the virtual machine, named "NS_ERROR_FAILURE (0x80004005)" it is because of privacy settings. I opened an issue for that. It is something like the ss below:

![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/mrs-ss/ns_Error1.png?raw=true)
![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/mrs-ss/ns_error2.png?raw=true)


If you cant solve it by the followings please write on the issue that created for that error. You should open a menu clicking the apple logo at top left then click *System Preferences*>*Security and Privacy* or open a terminal and type 

`open "x-apple.systempreferences:com.apple.preference.security?Privacy"` 

it will navigate you to window that we want to go which is as the following. You have to give permission to Oracle-VM to solve that issue. 


![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/mrs-ss/privacy.png?raw=true)

You can see another error while opening the VM which is the network error but dont worry it can be fixed by only pushing a button on the pop-up menu. It is as following:

![VirtualBox](https://github.com/Computational-Imaging-LAB/MRS_Education/blob/main/mrs-ss/network_error.png?raw=true)

Ok it is all set now. Easy peasy! Ok may be not but beleive me this was the easiest way to do it. 


# Questions

If you have any issues or questions please open an issue to ask. If it is not an issue then you can find me from the email below. Dont hesitate to ask anything.

Abdullah Baş

abdullah.bas@boun.edu.tr


Thanks for the contributions to installation part of requirements of this MRS Course.

Gökçe Hale Hatay

Buse Buz Yaluğ













