# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'
#PS1='[\u@\h \W]\$ '

export EDITOR=vim

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Add RubyMine to PATH
export PATH="$PATH:$HOME/Apps/RubyMine/bin"

# Colour bash prompt with git prompt
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 " (%s)") \[\033[01;34m\]\$\[\033[00m\] '

# prompt
source /usr/share/git/completion/git-prompt.sh
#export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1

if [[ ${EUID} == 0 ]] ; then
  PS1='\[\033[01;31m\]\h\[\033[01;34m\] \w \$\[\033[00m\] '
else
  PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 " (%s)") \[\033[01;34m\]\$\[\033[00m\] '
fi
