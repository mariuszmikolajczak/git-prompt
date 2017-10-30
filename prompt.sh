# Colour bash prompt with git prompt
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 " (%s)") \[\033[01;34m\]\$\[\033[00m\] '

# prompt
#PS1='[\u@\h \W]\$ '
source /usr/share/git/completion/git-prompt.sh
#export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1

if [[ ${EUID} == 0 ]] ; then
  PS1='\[\033[01;31m\]\h\[\033[01;34m\] \w \$\[\033[00m\] '
else
  PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 " (%s)") \[\033[01;34m\]\$\[\033[00m\] '
fi

