# Setting up the environment
autoload -U colors
colors
setopt prompt_subst

# Prompt
PROMPT='
%{$fg[cyan]%}%~%{$reset_color%}
𝝺 '

# History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history
setopt APPEND_HISTORY

# Environment variables
PATH="/usr/local/bin:/usr/local/sbin:$PATH"
EDITOR=vim

# Aliases
alias ll="ls -lh"
alias la="ls -lah"

# NVM
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh

# rbenv
eval "$(rbenv init -)"
