#!/bin/bash


echo "****************************"

test=`conda --version` || test="none"

echo "conda version:{$test}"
echo "****************************"


if [ "$test" = "none" ]; then 
    echo "There is no conda installation is detected. Download started!"
    wget -q --show-progress https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh
    echo "**********************************************************************"
    echo "Download finished. Please be here to insert the required inputs. Defaults are recommended."
    bash Miniconda3-py37_4.10.3-Linux-x86_64.sh

fi
echo "***********************************************************************"
echo "Installation is finished. Now close and open the terminal again."
echo "***********************************************************************"

echo "deb http://cz.archive.ubuntu.com/ubuntu bionic main universe" |  sudo tee -a /etc/apt/sources.list
sudo apt-get update && sudo apt-get upgrade
sudo apt install make gcc libgtk-3-dev libwebkitgtk-dev libwebkitgtk-3.0-dev libgstreamer-gl1.0-0 freeglut3 freeglut3-dev python-gst-1.0 python3-gst-1.0 libglib2.0-dev ubuntu-restricted-extras libgstreamer-plugins-base1.0-dev


conda create --name mrs_course python=3.7
conda activate mrs_course
conda install numpy scipy matplotlib wxpython configobj packaging
conda install -c conda-forge lmfit pydicom pypubsub
pip install pygamma vespa-suite
python -m vespa.check_dependencies
