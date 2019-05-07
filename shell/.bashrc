# Default .bashrc from void-linux.

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Custom.
# Execute .profile.d one-purpose files.
if [ -d ~/.profile.d ]; then
    for init_file in ~/.profile.d/*.sh; do
        source ${init_file}
    done
fi
