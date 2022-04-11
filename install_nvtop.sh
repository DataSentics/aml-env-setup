#!/bin/bash

echo "Installing NVTOP"
echo "workdir: $PWD"

source (conda info --base)/etc/profile.d/conda.sh
conda activate base

sudo apt install cmake libncurses5-dev libncursesw5-dev
git clone https://github.com/Syllo/nvtop.git
mkdir -p nvtop/build
cd nvtop/build
cmake .. -DNVIDIA_SUPPORT=ON -DAMDGPU_SUPPORT=ON
make

# Install globally on the system
sudo make install
