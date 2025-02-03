#!/bin/sh

show_menu() {
    cat <<EOF | xmenu
D 1 minute	1 minute:60
F 5 minutes	5 minutes:300
G 15 minutes	15 minute:900
H Half-hour	Half-hour:1200
J 45 minutes	45 minutes:2250
K A whole hour	A whole hour:3600
EOF
}

main() {
    local choice="$(show_menu)"
    if [ -n "${choice}" ]; then
        local seconds="${choice##*:}"
        local interval_name="${choice%%:*}"
        if [ -z "${interval_name}" ] || [ -z "${seconds}" ]; then
            echo -e '\b'
            exit 1
        fi
        # Start a background sleep job.
        (sleep ${seconds} && \
             notify-send -i alarm \
                 "${interval_name} passed." \
                 "$(cat <<EOF
* Important? <i>Write it down.</i>
* Not important? <i>Close it.</i>
* If in doubt, save for later.
EOF
                 )"
        ) &
    fi
}

# Run.
main
