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

export FZF_DEFAULT_OPTS='
--color fg:240,bg:230,hl:33,fg+:241,bg+:221,hl+:33
--color info:33,prompt:33,pointer:166,marker:166,spinner:33
'


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
