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


