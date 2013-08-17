# Setting up the environment
autoload -U colors
colors
setopt prompt_subst

# Prompt
local folder="ﬦ"
local git="⑂"
local git_staged="%{$fg[green]%}●%{$reset_color%}"
local git_unstaged="%{$fg[yellow]%}±%{$reset_color%}"
local git_untracked="%{$fg[red]%}!%{$reset_color%}"

# Prompt functions
function cwd {
	echo "%{$fg[blue]%}%~%{$reset_color%}"
}
function folder_symbol {
	git branch >/dev/null 2>/dev/null && echo "${git} " && return
	echo "${folder} "
}
function git_symbols {
	local symbols=""
	if [[ -n $(git diff --name-only --cached 2>/dev/null) ]]; then
		symbols+="${git_staged} "
	fi
	if [[ -n $(git ls-files -m --exclude-standard 2>/dev/null) ]]; then
		symbols+="${git_unstaged} "
	fi
	if [[ -n $(git ls-files -o --exclude-standard 2>/dev/null) ]]; then
		symbols+="${git_untracked} "
	fi
	echo "${symbols}"
}
function git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo "${ref#refs/heads/} "
}

# Left prompt
PROMPT='
$(cwd)
$(folder_symbol)$(git_branch)$(git_symbols)%{$reset_color%}'

# Right prompt
RPROMPT='%T ∙ %D ∙ %n@%m'

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
. ~/.nvm/nvm.sh

# rbenv
eval "$(rbenv init -)"
