if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Autostart X at login
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
   startx
fi
