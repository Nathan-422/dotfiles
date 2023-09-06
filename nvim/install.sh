# Install ripgrep for telescope
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb

# Symlink nvim config files
mkdir -p ~/.config/nvim/lua/user
cp -rs ~/.dotfile/nvim/ ~/.config/nvim/
