# My linux config files

## Configured by this repo

- zsh
- neovim

## requirements
neovim 0.8

## install commands

### Upgrading neovim on outdated systems

```
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
```

### zsh2000

```
sudo apt-get install fonts-powerline

cd ~/.oh-my-zsh/custom/themes/
git clone https://github.com/consolemaverick/zsh2000.git
ln -s ~/.oh-my-zsh/custom/themes/zsh2000.zsh-theme ~/.oh-my-zsh/themes/zsh2000.zsh-theme
```
