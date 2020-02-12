#variaveis
NODEV=10.15.2

#limpar logs
echo '' > logs.txt
# atualizar repos
sudo apt update >> logs.txt 2> /dev/null && echo Update: OK || echo Update: Failed
sudo apt upgrade -y >> logs.txt 2> /dev/null && echo Upgrade: OK || echo Upgrade: Failed
sudo apt dist-upgrade -y >> logs.txt 2> /dev/null && echo Dist-upgrade: OK || echo Dist-upgrade: Failed
### installar prereqs
sudo apt install curl -y >> logs.txt 2> /dev/null && echo curl: OK || echo curl: Failed
sudo apt install git -y >> logs.txt 2> /dev/null && echo git: OK || echo  git: Failed
sudo apt install build-essential -y >> logs.txt 2> /dev/null && echo Build Tools: OK || echo Build Tools: Failed
### installar node
curl -s -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash >> logs.txt 2> /dev/null && echo nvm: OK || nvm: Failed
### Para nao precisar reiniciar o bash
sleep 0.5
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" >> logs.txt 2> /dev/null
sleep 0.5
## instalar versao 10.15.2
nvm install $NODEV >> logs.txt 2> /dev/null
nvm use $NODEV  >> logs.txt 2> /dev/null && echo node: OK || node: Failed
## yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - >> logs.txt 2> /dev/null
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list >> logs.txt 2> /dev/null
sudo apt update >> logs.txt 2> /dev/null
sudo apt install --no-install-recommends yarn -y >> logs.txt 2> /dev/null && echo Yarn: OK || echo Yarn: Failed
# vscode
sudo snap install code --classic >> logs.txt 2> /dev/null && echo Code: OK || echo Code: Failed
sleep 0.5
# extensions
code --install-extension sdras.vue-vscode-extensionpack >> logs.txt 2> /dev/null && echo VuePack: OK || VuePack: Failed
code --install-extension dbaeumer.vscode-eslint >> logs.txt 2> /dev/null && echo EsLint: OK || EsLint: Failed
# temas
code --install-extension PKief.material-icon-theme >> logs.txt 2> /dev/null && echo Material-icon: OK || Material-icon: Failed
code --install-extension dracula-theme.theme-dracula >> logs.txt 2> /dev/null && echo Dracula: OK || Dracula: Failed
# config
curl -s https://raw.githubusercontent.com/haurenburu/shells/master/settings.json > $HOME/.config/Code/User/settings.json && echo VSConfig: OK || VSConfig: Failed
# insomnia
sudo snap install insomnia >> logs.txt 2> /dev/null && echo Insomnia: OK || echo Insomnia: Failed
# docker
sudo snap install docker >> logs.txt 2> /dev/null && echo Docker: OK || echo Docker: Failed
# docker como sudo
sudo gpasswd -a $USER docker >> logs.txt 2> /dev/null && echo Dockergroup: OK || echo Dockergroup: Failed
#sudo groupadd docker
#sudo usermod -aG docker $USER
#newgrp docker
