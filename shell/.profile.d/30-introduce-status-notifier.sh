# Notifies of execution of something.
# $* is the command to execute.
# If no command given, the last ststus is used, and command name is not known..

# First thing we want is to capture the last status of a possible pipeline.
function N() {
    # Should work even with embedded whitespace.
    local start_seconds=$(date +"%s")
    "$@"
    status=$?
    command="$*"
    local duration="in $(($(date +'%s') -  ${start_seconds})) s"
    _notify_by_status "${status}" "${duration}" "${command}"
    (exit ${status})  # Exit in a subshell sets exit code but does not exit our shell.
}

# To be invoked after a long command, with optional $1 as name.
function NN() {
    local status=$?
    local name="${*:-Previous command}"
    _notify_by_status "${status}" "by now" "${name}"
    (exit ${status})
}

function _notify_accept_button_response() {
    local windowid=$1
    local icon="${2-error}"
    local button_cmd="${3-OK}"
    local command="${4-unspecified_command}"
    local message="${5-unspecified_message}"
    # The below only waits for user input if button_cmd is not empty.
    local response=$(notify-send -i "${icon}" ${button_cmd} "${command}" "${message}")
    if [ "$response" == "focus" ]; then
        wmctrl -i -a ${WINDOWID}
    fi
}

function _notify_by_status() {
    local status="$1"
    local time_clause="$2"
    shift 2
    local command="$*"
    if [ "${status}" -eq 0 ]; then
        local message="Completed ${time_clause}."
        local icon="online"  # Something green.
    else
        local message="<b>Failed</b> ${time_clause}.\nExit code $status."
        local icon="dialog-error"  # Something red.
    fi

    # Maybe we can focus the terminal window that issued the command.
    local buton_cmd=""
    if [ -x "$(which wmctrl)" ] && [ -n "${WINDOWID}" ]; then
        button_cmd='--action=focus=Show'  # NOTE: Could add a "Dismiss" button, but why?
    fi

    (   # Async wait for the button click.
        # Along the lines of https://unix.stackexchange.com/a/452701/3633
        set +m  # Disable job control to prevent the '[n] Done' message.
        {
            2>&3 _notify_accept_button_response "${WINDOWID}" "${icon}" "${button_cmd}" "${command}" "${message}" &
        } 3>&2 2>/dev/null
    )
}
