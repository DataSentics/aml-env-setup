#!/bin/bash

echo "Installing YOLOv5..."
# show each executed command
set -x

# create conda environment
source $(conda info --base)/etc/profile.d/conda.sh
conda create -n yolov5 python=3.8
conda activate yolov5

git clone https://github.com/ultralytics/yolov5
cd yolov5

pip install -r requirements.txt

# install some useful python packages
pip install wandb
pip install ipython
