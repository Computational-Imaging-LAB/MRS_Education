#!/bin/bash

echo "deb http://cz.archive.ubuntu.com/ubuntu bionic main universe" |  sudo tee -a /etc/apt/sources.list


sudo apt-get update && sudo apt-get upgrade

sudo apt install make gcc libgtk-3-dev libwebkitgtk-dev libwebkitgtk-3.0-dev libgstreamer-gl1.0-0 freeglut3 /
                      freeglut3-dev python-gst-1.0 python3-gst-1.0 libglib2.0-dev ubuntu-restricted-extras /
                      libgstreamer-plugins-base1.0-dev
conda create --name mrs_course python=3.7
conda activate mrs_course
conda install numpy scipy matplotlib wxpython configobj packaging
conda install -c conda-forge lmfit pydicom pypubsub
pip install pygamma vespa-suite
python -m vespa.check_dependencies
pip install matplotlib


echo "alias vespa_analysis='python $HOME/miniconda3/envs/mrs_course/lib/python3.7/site-packages/vespa/analysis/main.py'" |  sudo tee -a ~/.bashrc
echo "alias vespa_datasim='python $HOME/miniconda3/envs/mrs_course/lib/python3.7/site-packages/vespa/datasim/main.py'" |  sudo tee -a ~/.bashrc
echo "alias vespa_pulse='python $HOME/miniconda3/envs/mrs_course/lib/python3.7/site-packages/vespa/pulse/main.py'" |  sudo tee -a ~/.bashrc
echo "alias vespa_simulation='python $HOME/miniconda3/envs/mrs_course/lib/python3.7/site-packages/vespa/simulation/main.py'" |  sudo tee -a ~/.bashrc
