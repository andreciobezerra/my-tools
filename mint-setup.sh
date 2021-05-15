# Verify dependence and installing dependences
command -v wget > wget
if [ wget ]
then
  sudo apt install wget -y
fi

sudo apt update
sudo apt install software-properties-common apt-transport-https ca-certificates curl -y

#Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(. /etc/os-release; echo "$UBUNTU_CODENAME") stable"
sudo apt update
sudo apt install docker-ce docker-compose -y
sudo usermod -aG docker $USER

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

#NVM 
sudo wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

#Node Latest
sudo nvm install node

#Yarn
npm i yarn -g

#Github CLI
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh

#Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

#Golang
wget https://golang.org/dl/go1.16.4.linux-amd64.tar.gz -O /tmp/golang.tar.gz
tar /usr/local -xzf /tmp/golang.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> $HOME/.profile

#Install zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
which zsh > chsh -s
