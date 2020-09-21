cd $HOME
git clone --recursive https://github.com/akash-idnani/dotfiles
ln -s dotfiles/.ideavimrc .ideavimrc
ln -s dotfiles/.dir_colors .dir_colors
ln -s dotfiles/.p10k.zsh .p10k.zsh
ln -s dotfiles/.tmux.conf .tmux.conf
ln -s dotfiles/.tmux.conf.local .tmux.conf.local
ln -s dotfiles/.vimrc .vimrc
ln -s dotfiles/.zshrc .zshrc

touch .zshrc_local

sudo add-apt-repository ppa:aacebedo/fasd
sudo apt-get update
sudo apt-get install fasd

sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo chsh -s $(which zsh)

ln -s dotfiles/.zshrc .zshrc
