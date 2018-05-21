#! /bin/bash

mkdir -p $HOME/.config
ln -s $HOME/dot-files/karabiner $HOME/.config

ln -s $HOME/dot-files/.gitconfig $HOME/.gitconfig

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s $HOME/dot-files/.tmux.conf $HOME/.tmux.conf

ln -s $HOME/dot-files/.ideavimrc $HOME/.ideavimrc
ln -s $HOME/dot-files/.vimrc $HOME/.vimrc

ln -s $HOME/dot-files/.zprezto $HOME/.zprezto
ln -s $HOME/.zprezto/runcoms/zlogin $HOME/.zlogin
ln -s $HOME/.zprezto/runcoms/zlogout $HOME/.zlogout
ln -s $HOME/.zprezto/runcoms/zpreztorc $HOME/.zpreztorc
ln -s $HOME/.zprezto/runcoms/zprofile $HOME/.zprofile
ln -s $HOME/.zprezto/runcoms/zshenv $HOME/.zshenv
ln -s $HOME/.zprezto/runcoms/zshrc $HOME/.zshrc

