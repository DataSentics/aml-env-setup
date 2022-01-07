#!/usr/bin/env fish

echo "Copying setup scripts"
rsync --delete -r ~/psi/aml_env_setup azure-ml:~/


# echo "Copying personal-shelf-inspector-training files"
# azsync

echo "Running the setup scripts"
ssh azure-ml "cd ~/aml_env_setup && bash setup.sh"


