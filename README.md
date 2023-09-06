# My linux config files

## Configured by this repo

- zsh
- neovim

## requirements
neovim 0.8

## install commands

### Upgrading neovim on outdated systems

```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && sudo apt upgrade
```

### zsh2000

Download and install choice of fonts from: https://github.com/ryanoasis/nerd-fonts/releases

```
cd ~/.oh-my-zsh/custom/themes/
git clone https://github.com/consolemaverick/zsh2000.git
ln -s ~/.oh-my-zsh/custom/themes/zsh2000.zsh-theme ~/.oh-my-zsh/themes/zsh2000.zsh-theme
```
