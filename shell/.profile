# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# Stuff that happens on any login.
export TZ="/usr/share/zoneinfo/$(cat $HOME/timezone)"

# TODO: should go to .xprofile.
export QT_QPA_PLATFORMTHEME=gtk2

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -r "$HOME/.bashrc" ]; then
	    . "$HOME/.bashrc"
    fi
fi

