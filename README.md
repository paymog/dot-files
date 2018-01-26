# dot-files
backup of my dotfiles


# neovim
1) need to install neovim manually
2) need to install https://github.com/junegunn/vim-plug
3) mkdir -p ~/.config/nvim
4) make the symlink

# how to make this work
make sure to clone recursively

need to manually create symlinks to the dotfiles in this repo to home directory

also need to manually create symlinks to the files in .zprezto/runcoms for
zprezto to work

want zsh related files to look like:

```
.zlogin -> /Users/paymahn/.zprezto/runcoms/zlogin
.zlogout -> /Users/paymahn/.zprezto/runcoms/zlogout
.zprezto -> /Users/paymahn/dot-files/.zprezto
.zpreztorc -> /Users/paymahn/.zprezto/runcoms/zpreztorc
.zprofile -> /Users/paymahn/.zprezto/runcoms/zprofile
.zshenv -> /Users/paymahn/.zprezto/runcoms/zshenv
.zshrc -> /Users/paymahn/.zprezto/runcoms/zshrc
```


# karabiner

Make sure to link the karabiner folder into ~/.config
