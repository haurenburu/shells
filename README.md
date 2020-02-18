## Para executar o script:
```
sudo apt update &&  
sudo apt upgrade &&  
wget -O - https://raw.githubusercontent.com/haurenburu/shells/master/install.sh | bash

```
##
- installar prereqs
- instalar o nvm
- instalar o node (10.15.2)
- instalar yarn
- instalar vscode
- Instalar as extençoes do vscode
  * Vue VS Code Extension Pack
  * Eslint
  * Material Icon theme
  * Dracula theme
- Load das Configurações do VS Code
- Instalar o insomnia
- Instalar o Docker
- Instalar o zsh
- Instalar o Oh My ZSH
- Instalar o Firacode
- Instalar o Dracula (Terminal)

## Após a instalação faça logoff e execute os seguintes comandos (no modo zsh)

- Instala o Space Ship

  ``git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"``

- Cria um link simbolico para o Space Ship

  ``ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme``

- Carrega as configurações do Space Ship

  ``curl -s https://raw.githubusercontent.com/haurenburu/shells/master/zshrc``

- Permite que o docker seja excecutado por usuários
`` newgrp docker ``
