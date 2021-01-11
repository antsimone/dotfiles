#
# ~/.bashrc
#

[[ $- != *i* ]] && return

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'

}

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    PS1='\[\033[01;34m\]\w\[\033[00m\]\[\033[01;36m\]$(parse_git_branch)\[\033[00m\]\$ '
else
    PS1='[\u@\h \W]\$ '
fi

if [ -f ~/.bash_aliases ]; then 
    . ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

shopt -s checkwinsize
shopt -s autocd
shopt -s cdspell
shopt -s dotglob
shopt -s nocaseglob

set -o noclobber
set -o vi

