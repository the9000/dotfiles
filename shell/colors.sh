# color-setting helper

# name -> ANSI esc {3,4}Nm code
# NOTE: space in bracket matters!
declare -A color_by_name
color_by_name[black]=0
color_by_name[red]=1
color_by_name[green]=2
color_by_name[brown]=3
color_by_name[blue]=4
color_by_name[purple]=5
color_by_name[cyan]=6
color_by_name[gray]=7
color_by_name[dk_gray]=8
color_by_name[lt_red]=9
color_by_name[lt_green]=10
color_by_name[yellow]=11
color_by_name[lt_blue]=12
color_by_name[lt_purple]=13
color_by_name[lt_cyan]=14
color_by_name[white]=15
# TODO more

color() {
# possible invocation arguments
# "none"  // resets all attributes
# "yellow"
# "yellow on blue"
# "on blue"
# "default"
    local is_bg='' # empty is false
    local result=''
    while [ -n "$1" ]; do
        if [ $1 = 'none' ]; then
            result="$(tput sgr none)"
            break
        fi
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
    echo -n $result
}

