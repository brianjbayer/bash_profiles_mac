###################################
# NOTE: Sourced by .bash_profile
###################################


### ALIASES ###
alias lsa='ls -al '
alias cls='clear '

# Git Aliases
alias gb='git branch '
alias gd='git diff '
alias go='git checkout '
alias gs='git status '
alias golo='git log '


### ENVIRONMENT MANAGERS ###
## JENV - Enable shims and autocompletion
#if which jenv > /dev/null; then eval "$(jenv init -)"; fi

## RBENV -  Enable shims and autocompletion
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


### PATHS ###
## JENV - override
#export PATH="$HOME/.jenv/bin:$PATH"

## RBENV - override (especially homebrew's ruby)
#export PATH="$HOME/.rbenv/shims:$PATH"


### PROMPT ###
# Git branch in prompt.

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "
