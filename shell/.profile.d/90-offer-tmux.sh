# Offer to attach to TMUX if we're SSH-ing in interactively.
if [ -n ${SSH_TTY} ] && [ -z ${TMUX} ] && [ -n "$(which tmux)" ] && (tmux has-session 2> /dev/null); then
    echo "A tmux session is present. Consider typing"
    echo "tmux attach"
fi
