#!/usr/bin/env fish

echo "Copying setup scripts"
rsync --delete -r ~/psi/aml-env-setup azure-ml:~/


# echo "Copying personal-shelf-inspector-training files"
# azsync

echo "Running the setup scripts"
ssh azure-ml "cd ~/aml-env-setup && bash setup.sh"


