#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# vim mode
bindkey -v
export KEYTIMEOUT=1

# disable autocorrect from utility module
unsetopt CORRECT

# vim default editor
export VISUAL='/usr/local/bin/nvim'
export EDITOR='/usr/local/bin/nvim'

# aliases
alias rz="source ~/.zshrc"
alias ez="$EDITOR ~/.zshrc"
alias ezp="$EDITOR ~/.zpreztorc"
alias et="$EDITOR ~/.tmux.conf"
#alias vim='nvim'
alias env='$EDITOR ~/.config/nvim/init.vim'


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
