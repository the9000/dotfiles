# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

[ -r ~/.setup-p4 ] && . ~/.setup-p4

# do we have prodaccess?
# [ -x "$(which prodcertstatus)" ] && prodcertstatus

# Enable SSH agent
[ -r ~/.ssh-agent ] && . ~/.ssh-agent > ~/.ssh-agent-output

# Can attach to TMUX if we're interactive and not yet in
if [ -n ${SSH_TTY} ] && [ -z ${TMUX} ] && killall -q -0 tmux; then
    echo "A tmux session is present. Consider typing"
    echo "tmux attach"
fi
