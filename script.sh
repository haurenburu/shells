# atualizar repos
sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y
### installar prereqs
sudo apt install curl -y
sudo apt install git -y
sudo apt install build-essential -y
### installar node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
### Para nao precisar reiniciar o bash
wait 1
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
wait 1
## instalar versao 10.15.2
nvm install 10.15.2
nvm use 10.15.2
## yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install --no-install-recommends yarn -y
# vscode
sudo snap install code --classic
# extensions
code --install-extension sdras.vue-vscode-extensionpack
code --install-extension bceskavich.theme-dracula-at-night
code --install-extension dbaeumer.vscode-eslint
# temas
code --install-extension PKief.material-icon-theme
code --install-extension dracula-theme.theme-dracula
# config
curl https://raw.githubusercontent.com/haurenburu/shells/master/settings.json > $HOME/.config/Code/User/settings.json
# insomnia
sudo snap install insomnia
# docker
sudo snap install docker
