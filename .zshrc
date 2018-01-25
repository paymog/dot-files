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

# add genymotion to my path for react native android simulation
export PATH=$PATH:/Applications/Genymotion.app/Contents/MacOS/tools

# vim mode
bindkey -v
export KEYTIMEOUT=1

# disable autocorrect from utility module
unsetopt CORRECT

# vim default editor
export VISUAL='/usr/local/bin/vim'
export EDITOR='/usr/local/bin/vim'

# aliases
alias rz="source ~/.zshrc"
alias ez="$EDITOR ~/.zshrc"
alias ezp="$EDITOR ~/.zpreztorc"
alias et="$EDITOR ~/.tmux.conf"
alias ev="$EDITOR ~/.vimrc"
#alias vim='nvim'
alias env='$EDITOR ~/.config/nvim/init.vim'

export FZF_DEFAULT_OPTS='
--color fg:240,bg:230,hl:33,fg+:241,bg+:221,hl+:33
--color info:33,prompt:33,pointer:166,marker:166,spinner:33
'
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'


# git aliases
alias gst='git status'
alias gaa='git add --all'
alias gd='git diff'
alias gco='git checkout'
alias gp='git push'
alias gl='git pull'
alias gc='git commit'

# tmux aliases
alias tnew="tmux new -s"
alias ta="tmux a -t"
alias tl="tmux ls"
alias tk="tmux kill-session -t"

# utility aliases
alias grepp="grep -iIrnp"

#bindkey -e
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
