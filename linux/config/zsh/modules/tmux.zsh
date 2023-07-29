

if [ -n "\$SSH_CLIENT" ] || [ -n "\$SSH_TTY" ] || [ -n "\$SSH_CONNECTION" ] ; then
  true
else
  export HOST_ALWAYS_USE_TMUX=1
fi

