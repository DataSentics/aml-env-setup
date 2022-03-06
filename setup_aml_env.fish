#!/usr/bin/env fish

echo "Copying setup scripts to azure-ml:~/aml-env-setup"
rsync -r --delete . azure-ml:~/aml-env-setup


echo "Running the setup scripts"
ssh azure-ml "cd ~/aml-env-setup && bash setup.sh"


