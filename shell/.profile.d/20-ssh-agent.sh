# Enable SSH agent

# Make sure ssh-agent is available in every shell.
# Taken from http://mah.everybody.org/docs/ssh

SSH_ENV="$HOME/.ssh/environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo "Succeeded."
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}

function ssh_agent_main() {
    if [ -f "${SSH_ENV}" ]; then
        . "${SSH_ENV}" > /dev/null
        #ps ${SSH_AGENT_PID} doesn't work under cywgin
        ps -ef | grep ${SSH_AGENT_PID} | grep "ssh-agent$" > /dev/null || {
            start_agent;
        }
    else
        start_agent;
    fi
}

ssh_agent_main > "$HOME/.ssh-agent-output"

unset -f start_agent
unset -f ssh_agent_main
