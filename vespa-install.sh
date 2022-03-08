#!/bin/bash

echo "deb http://cz.archive.ubuntu.com/ubuntu bionic main universe" |  sudo tee -a /etc/apt/sources.list



sudo apt install make gcc libgtk-3-dev libwebkitgtk-dev libwebkitgtk-3.0-dev libgstreamer-gl1.0-0 freeglut3 /
                      freeglut3-dev python-gst-1.0 python3-gst-1.0 libglib2.0-dev ubuntu-restricted-extras /
                      libgstreamer-plugins-base1.0-dev
conda activate mrs_course
conda install numpy scipy matplotlib wxpython configobj packaging
conda install -c conda-forge lmfit pydicom pypubsub
pip install pygamma vespa-suite
python -m vespa.check_dependencies
pip install matplotlib
sudo apt-get install mlocate

path=`locate vespa/analysis/main.py`
echo "alias vespa_analysis='python $path'" |  sudo tee -a ~/.bashrc
path=`locate vespa/datasim/main.py`
echo "alias vespa_datasim='python $path'" |  sudo tee -a ~/.bashrc
path=`locate vespa/pulse/main.py`
echo "alias vespa_pulse='python $path'" |  sudo tee -a ~/.bashrc
path=`locate vespa/simulation/main.py`
echo "alias vespa_simulation='python $path'" |  sudo tee -a ~/.bashrc
