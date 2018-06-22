# Offer to attach to TMUX if we're SSH-ing in interactively.
if [ -n ${SSH_TTY} ] && [ -z ${TMUX} ] && killall -q -0 tmux; then
    echo "A tmux session is present. Consider typing"
    echo "tmux attach"
fi
