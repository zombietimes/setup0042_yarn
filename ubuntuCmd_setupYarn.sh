# This script is for Ubuntu Ver18.04.
#!/bin/sh

echo "\n<Setup>"
echo "Set up yarn."
echo "\n"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt remove cmdtest -y
sudo apt-get update -y
sudo apt-get install --no-install-recommends yarn -y
yarn --version

