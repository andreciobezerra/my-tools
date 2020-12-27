# Verify dependence and installing dependences
command -v wget > wget
if [ wget ]
then
  sudo apt install wget -y
fi

sudo apt update
sudo apt install software-properties-common apt-transport-https -y

#Installing Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/chrome.deb
sudo apt install /tmp/chrome.deb -y

#Installing VSCODE
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code

#Insomnia
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list

wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -
sudo apt update
sudo apt install insomnia

#MongoDB

sudo apt install MongoDB

#Robo3T

 wget https://download-test.robomongo.org/linux/robo3t-1.4.2-linux-x86_64-8650949.tar.gz -O /tmp/robo3t.tar.gz
 mkdir -p /data/robo3t
 tar -xvzf /tmp/robo3t.tar.gz -C /data/robo3t

#NVM 
sudo wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

#Node LTS
sudo nvm install --lts
nvm alias default node

#Firebase CLI
sudo npm i firebase-tools -g

#Install zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
which zsh > chsh -s
