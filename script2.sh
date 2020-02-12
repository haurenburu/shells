# atualizar repos
sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y
# installar prereqs
sudo apt install git -y
sudo apt install curl -y
sudo apt install build-essential -y
# installar node
curl -o- https://raw.githubusercontent.com/nv/m-sh/nvm/v0.35.2/install.sh | bash
# Para nao precisar reiniciar o bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
## instalar versao 10.15.2
nvm install 10.15.2
## usar a versao 10.15.2
nvm use 10.15.2
# vscode
sudo apt install code
curl https://raw.githubusercontent.com/haurenburu/shells/master/settings.json -o $HOME/.config/Code/User/settings.json
# extensions
code --install-extension sdras.vue-vscode-extensionpack
code --install-extension bceskavich.theme-dracula-at-night
code --install-extension dbaeumer.vscode-eslint
# temas
code --install-extension PKief.material-icon-theme
code --install-extension dracula-theme.theme-dracula
# insomnia
sudo apt install insomnia
# docker
sudo snap install docker
