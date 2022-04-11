#!/bin/bash

# print all commands being executed
set -ex

sudo -u azureuser -i <<'EOF'

git clone "https://github.com/jakubhejhal/aml-env-setup"
cd aml-env-setup

./setup.sh
./install_nvtop.sh
./install_yolov5.sh
EOF

