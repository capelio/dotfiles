# Setting up the environment
autoload -U colors
colors

# Display git repo info in the prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' check-for-changes true
zstyle ':vcs_info:git*' formats " (%b) %m%u%c"
zstyle ':vcs_info:git*' stagedstr "+"
zstyle ':vcs_info:git*' unstagedstr "!"
setopt prompt_subst

# Do the work we'll need to do before the command is run
precmd() {
  vcs_info
}

# Prompt
PROMPT='
%{$fg[cyan]%}%~%{$reset_color%}${vcs_info_msg_0_}
%n@%m 𝝺 '

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
alias la="ls -lha"
alias lt="ls -lhtr"
alias lb="ls -lhSr"

# NVM
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh
