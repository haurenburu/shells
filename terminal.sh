## TERMINAL
# zsh
sudo apt install zsh
# omzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# dracula theme
sudo apt-get install dconf-cli
git clone https://github.com/dracula/gnome-terminal
./gnome-terminal/install.sh
# firacode
wget https://github.com/tonsky/FiraCode/releases/download/2/FiraCode_2.zip
unzip FiraCode_2.zip
cp -r ttf/. $HOME/.fonts
TERMINAL_PROFILE=`gsettings get org.gnome.Terminal.ProfilesList default | awk -F \' '{print $2}'`
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$TERMINAL_PROFILE/ font 'Fira Code Medium 12'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$TERMINAL_PROFILE/ use-system-font false
# space ship
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# plugins zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"

cp $HOME/.zshrc $HOME/.zshrc.bkp
curl -s https://raw.githubusercontent.com/haurenburu/shells/master/zshrc > $HOME/.zshrc && echo zshrc: OK || zshrc: Failed
