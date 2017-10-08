!#/bin/sh
sudo pacman -S git zsh neovim tmux rofi termite i3 firefox thunar zsh
sudo pip2 install --upgrade neovim
sudo pip3 install --upgrade neovim
cp i3config ~/.config/i3/config
cp i3status.conf /etc/config/i3status.conf
cp termite ~/.config/termite/config
cp tmux.conf ~/.tmux.conf
cp tmux.conf ~/.config/nvim/init.vim
cp zshrc ~/.zshrc
