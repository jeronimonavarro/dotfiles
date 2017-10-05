# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

export EDITOR=/usr/bin/vim
export TERM="rxvt-unicode-256color"
## export TERM=xterm-256color
export PROMPT_DIRTRIM=2

set timeoutlen=1000
set ttimeoutlen=0

test -s ~/.alias && . ~/.alias || true
test -s ~/.alias_especifico && . ~/.alias_especifico || true
test -s ~/.functions && . ~/.functions || true
test -s ~/.env && . ~/.env || true

if [[ $EUID -eq 0 ]]; then
   # Root prompt
   PS1="\[\e[1;31m\]$PS1\[\e[m\]"
fi

# Fix variable TERM en tmux
if [ -n "$TMUX" ]; then
   export TERM="screen-256color"
fi

export PATH="$HOME/Descargas/apps/rakudo/install/bin:$HOME/Descargas/apps/rakudo/install/share/perl6/site/bin:$PATH"
