# color-setting helperhost_part=$(hostname | head -c 7)


# name -> ANSI esc {3,4}Nm code
# NOTE: arrray support sucks on OSX, switch to 16 pattern-named variables.
color_by_name_black=0
color_by_name_red=1
color_by_name_green=2
color_by_name_brown=3
color_by_name_blue=4
color_by_name_purple=5
color_by_name_cyan=6
color_by_name_gray=7
color_by_name_dk_gray=8
color_by_name_lt_red=9
color_by_name_lt_green=10
color_by_name_yellow=11
color_by_name_lt_blue=12
color_by_name_lt_purple=13
color_by_name_lt_cyan=14
color_by_name_white=15

COLORS_MAX=$(tput colors)

hl_color() {
    # $1 is for high-color mode, $2 for 8-color basic mode.
    # prints one of them, depending on COLORS_MAX.
    if [ ${COLORS_MAX} -gt 8 ]; then printf "%s" "$1";
    else printf "%s" "$2";
    fi
}

color() {
# possible invocation arguments
# "none"  // resets all attributes
# "yellow"
# "yellow on blue"
# "on blue"
# "underline" -- can be combined with colors
# "no_underline"
# "bold" (note): there's no 'no_bold', use 'none'
    local is_bg='' # empty is false
    local result=''
    while [ -n "$1" ]; do
        if [ $1 = 'none' ]; then
            result="${result}$(tput sgr0)"
            shift
            continue
        fi
        if [ $1 = 'underline' ]; then
            result="${result}$(tput smul)"
            shift
            continue
        fi
        if [ $1 = 'no_underline' ]; then
            result="${result}$(tput rmul)"
            shift
            continue
        fi
        if [ $1 = 'bold' ]; then
            result="${result}$(tput bold)"
            shift
            continue
        fi
        if [ $1 = 'on' ]; then
            shift
            is_bg=1
        else
            local selector=$([ -z "$is_bg" ] && echo 'setaf' || echo 'setab')
            local color_var_name="color_by_name_$1"
            local color=${!color_var_name}
            if [ -z "${color}" ]; then color=$1; fi # allow numeric colors
            result="${result}$(tput ${selector} ${color})"
            shift
        fi
    done
    echo -n $result
}


# A fun utility:
print_256_color_square() {
    local c c1 c2
    for c1 in {0..15}; do 
        for c2 in {0..15}; do 
            c=$(( c1 + 16*c2 )); 
            color $(( 93 - c1*2 - c2*2 )) on $c; 
            printf " %03d " $c; 
        done; 
        color none; 
        echo; 
    done
}
