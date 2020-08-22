#!/bin/bash

cd $HOME

apt install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --recursive https://github.com/akash-idnani/dotfiles

ln -s dotfiles/.ideavimrc .ideavimrc
ln -s dotfiles/.p10k.zsh .p10k.zsh
ln -s dotfiles/.tmux.conf .tmux.conf
ln -s dotfiles/.tmux.conf.local .tmux.conf.local
ln -s dotfiles/.vimrc .vimrc
ln -s dotfiles/.zshrc .zshrc
