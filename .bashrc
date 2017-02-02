export EDITOR=/usr/bin/vim
export TERM=xterm-256color
export PROMPT_DIRTRIM=2

set timeoutlen=1000
set ttimeoutlen=0

test -s ~/.alias && . ~/.alias || true
test -s ~/.alias_especifico && . ~/.alias_especifico || true
test -s ~/.functions && . ~/.functions || true
test -s ~/.env && . ~/.env || true

if [[ $EUID -ne 0 ]]; then
  # Default prompt
  PS1="\[\e[1;32m\]@\h:\[\e[1;34m\]\w\[\e[m\] ➤ "
else
  # Root prompt
  PS1="\[\e[1;31m\](root) @\h:\[\e[1;34m\]\w\[\e[m\] ➤ "
fi

# Prompt dentro de tmux con status bar disabled
if [ -n "$TMUX" ]; then
  PS1="\[\e[1;33m\][$(tmux display-message -p '#I')] $PS1"
fi

# Fix variable TERM en tmux
if [ -n "$TMUX" ]; then
  export TERM=screen-256color
fi

# Nivel de seguridad bajo
umask 022

# Compatibilidad con apps Qt en tema "Hedera"
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_PLATFORMTHEME=qt5ct
export QT_PLATFORM_PLUGIN=qt5ct
