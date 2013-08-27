# color-setting helper

# name -> ANSI esc {3,4}Nm code
# NOTE: space in bracket matters!
declare -A color_by_name
color_by_name[black]=0
color_by_name[red]=1
color_by_name[green]=2
color_by_name[blue]=4
color_by_name[white]=7
# TODO more

color() {
# possible invocations
# "yellow"
# "yellow on blue"
# "on blue"
# "default"
    local is_bg='' # empty is false
    local result=''
    while [ -n "$1" ]; do
        if [ $1 = 'on' ]; then
            shift
            is_bg=1
        else
            local selector=$([ -z "$is_bg" ] && echo 'setaf' || echo 'setab')
            local color=${color_by_name[$1]}
            if [ -z "${color}" ]; then color=$1; fi # allow numeric colors
            result="${result}$(tput ${selector} ${color})"
            shift
        fi
    done
    echo $result
}