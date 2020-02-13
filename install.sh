#!/bin/bash

#variaveis
NODEV=10.15.2

#limpar logs
mkdir gtiscript
cd gtiscript
echo '' > logs.txt
# atualizar repos
sudo apt update 
sudo apt upgrade -y 
sudo apt dist-upgrade -y 
### installar prereqs
sudo apt install curl -y 
sudo apt install git -y 
sudo apt install build-essential -y 
### installar node
curl -s -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash 
### Para nao precisar reiniciar o bash
sleep 0.5
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 
sleep 0.5
## instalar versao 10.15.2
nvm install $NODEV 
nvm use $NODEV  
## yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list 
sudo apt update 
sudo apt install --no-install-recommends yarn -y 
# vscode
sudo snap install code --classic 
sleep 0.5
# extensions
code --install-extension sdras.vue-vscode-extensionpack 
code --install-extension dbaeumer.vscode-eslint 
# temas
code --install-extension PKief.material-icon-theme 
code --install-extension dracula-theme.theme-dracula 
# config
curl -s https://raw.githubusercontent.com/haurenburu/shells/master/settings.json > $HOME/.config/Code/User/settings.json && echo VSConfig: OK || VSConfig: Failed
# insomnia
sudo snap install insomnia 
# docker
sudo snap install docker --classic 
# docker como sudo
sudo addgroup --system docker 
sudo adduser $USER docker 
newgrp docker 
sudo snap disable docker 
sudo snap enable docker 
## TERMINAL
# zsh
sudo apt install zsh -y 
# omzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" 
# firacode
wget -q https://github.com/tonsky/FiraCode/releases/download/2/FiraCode_2.zip
unzip FiraCode_2.zip 
cp -r ttf/. $HOME/.fonts 
TERMINAL_PROFILE=`gsettings get org.gnome.Terminal.ProfilesList default | awk -F \' '{print $2}'` 
gsettings set orgzsh.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$TERMINAL_PROFILE/ font 'Fira Code Medium 12' 
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$TERMINAL_PROFILE/ use-system-font false 
# space ship
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)" 

cp $HOME/.zshrc $HOME/.zshrc.bkp 


chsh -s $(which zsh) 

# dracula theme
sudo apt-get install dconf-cli -y 
git clone https://github.com/dracula/gnome-terminal
./gnome-terminal/install.sh
# RUN THIS AFTER LOGOFF (IN ZSH MODE) TODO
# git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
# curl -s https://raw.githubusercontent.com/haurenburu/shells/master/zshrc

