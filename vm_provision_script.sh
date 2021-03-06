#!/bin/bash

# print all commands being executed
set -ex

sudo -u azureuser -i <<'EOF'

git clone "https://github.com/DataSentics/aml-env-setup.git"
cd aml-env-setup

echo "pwd: $(pwd)"
./setup.sh


echo "pwd: $(pwd)"
./install_nvtop.sh

echo "pwd: $(pwd)"
./install_yolov5.sh
EOF

