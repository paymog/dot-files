#! /bin/bash
set -e

echo "Installing brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Tapping cask"
brew tap homebrew/cask

echo "Installing brew packages"
brew install fzf mosh python3 ripgrep tmux zsh vim kubectl sleepwatcher

echo "Installing casks"
brew cask install alfred bettertouchtool docker google-backup-and-sync google-chrome google-cloud-sdk gpg-suite intellij-idea iterm2 karabiner-elements kindle pycharm slack spotify sublime-text brave-browser docker notion anki

echo "Configuring system"

mkdir -p $HOME/.config
ln -s $HOME/dot-files/karabiner $HOME/.config

ln -s $HOME/dot-files/.gitconfig $HOME/.gitconfig

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s $HOME/dot-files/.tmux.conf $HOME/.tmux.conf

ln -s $HOME/dot-files/.ideavimrc $HOME/.ideavimrc
ln -s $HOME/dot-files/.vimrc $HOME/.vimrc

ln -s $HOME/dot-files/.fzf.zsh $HOME/.fzf.zsh
ln -s $HOME/dot-files/.fzf.bash $HOME/.fzf.bash

ln -s $HOME/dot-files/.zprezto $HOME/.zprezto
ln -s $HOME/.zprezto/runcoms/zlogin $HOME/.zlogin
ln -s $HOME/.zprezto/runcoms/zlogout $HOME/.zlogout
ln -s $HOME/.zprezto/runcoms/zpreztorc $HOME/.zpreztorc
ln -s $HOME/.zprezto/runcoms/zprofile $HOME/.zprofile
ln -s $HOME/.zprezto/runcoms/zshenv $HOME/.zshenv
ln -s $HOME/.zprezto/runcoms/zshrc $HOME/.zshrc
ln -s $HOME/.zprezto/runcoms/workrc $HOME/.workrc

ln -s $HOME/dot-files/.sleep $HOME/.sleep

sudo sh -c 'echo $(which zsh) >> /etc/shells'
chsh -s $(which zsh)

defaults write com.apple.Dock autohide-delay -float 2 && killall Dock

ssh-keygen -t rsa -b 4096 -C "paymahn1@gmail.com"

defaults write -g ApplePressAndHoldEnabled -bool false

brew services start sleepwatcher
