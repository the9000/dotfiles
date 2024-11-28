#!/bin/sh

# Makes a window take one of the predefined grid positions.
# Parts from https://unix.stackexchange.com/a/156349/3633

# NOTE: We account for window's decorations vertically,
# but *ignore* decorations horizontally.
# We cannot just use `xdotool windowsize 50% y`, because
# the y does not account for the title bar, and the window moves down.
# We also cannot use percent position and absolutio powition in windowmove.
# So we compute everything ourselves :(

active_window=$(xdotool getactivewindow)  # or selectwindow

desktop_w=$(xwininfo -root | sed -n -e "s/^ \+Width: \+\([0-9]\+\).*/\1/p")
desktop_h=$(xwininfo -root | sed -n -e "s/^ \+Height: \+\([0-9]\+\).*/\1/p")

eval $(xwininfo -id $active_window |
  sed -n -e "s/^ \+Absolute upper-left X: \+\([0-9]\+\).*/x=\1/p" \
         -e "s/^ \+Absolute upper-left Y: \+\([0-9]\+\).*/y=\1/p" \
         -e "s/^ \+Width: \+\([0-9]\+\).*/w=\1/p" \
         -e "s/^ \+Height: \+\([0-9]\+\).*/h=\1/p" \
         -e "s/^ \+Relative upper-left X: \+\([0-9]\+\).*/border=\1/p" \
         -e "s/^ \+Relative upper-left Y: \+\([0-9]\+\).*/title=\1/p" )
xd=$(( $x - ${border} ))
yd=$(( $y - ${title} ))
wd=$(( $w + 2 * ${border} ))
hd=$(( $h + ${title} + ${border} ))

W_25=$(( ${desktop_w} / 4 )) # 25%
W_33=$(( ${desktop_w} / 3 )) # 33%
W_50=$(( ${desktop_w} / 2  )) # 50%
W_66=$(( 2 * ${W_33} )) # 66%

X_25_L=-${border}
X_25_R=$(( ${W_50} + ${W_25} ))

X_33_L=-${border}
X_33_C=${W_33}
X_33_R=$(( ${desktop_w} - ${W_33} ))

X_50_L=-${border}
X_50_C=${W_25}
X_50_R=${W_50}

X_66_C=$(( ${W_50} - ${W_33} ))

H_33=$(( ${desktop_h} / 3 - ${title} - 3 * ${border} ))
H_50=$(( ${desktop_h} / 2 - ${title} - 3 * ${border} ))

Y_33_U=0
Y_33_D=$(( ${desktop_h} - ${desktop_h} / 3 + ${border} ))

Y_50_U=0
Y_50_D=$(( ${desktop_h} / 2 + 2 * ${border} ))


# echo "Window at ${xd} ${yd}, title = ${title}"

win_adjust_horiz() {
    xdotool \
        windowstate --remove MAXIMIZED_HORZ ${active_window} \
        windowmove ${active_window} $1 ${yd} \
        windowsize ${active_window} $2 h
}

win_adjust_vert() {
    xdotool \
        windowstate --remove MAXIMIZED_VERT ${active_window}  \
        windowmove ${active_window} ${xd} $1 \
        windowsize ${active_window} w $2
}


run_menu() {
    cat <<EOF | xmenu
1 << 25% Left edge	L25
2 << 33% Left edge	L33
3 << 50% Left edge	L50

4 | 33% Centered |	C33
5 | 50% Centered |	C50
6 | 66% Centered |	C66

7 Right edge 50% >> 	R50
9 Right edge 33% >>	R33
9 Right edge 25% >>	R25

+ 33% Tall Up /\	U33
= 50% Tall Up /\	U50
_ 33% Tall Down \/	D33
- 50% Tall Down \/	D50
EOF
}

#win_adjust_horiz ${X_33_L} ${W_33}
#win_adjust_horiz ${X_33_R} ${W_33}
# win_adjust_horiz ${X_33_C} ${W_33}
#win_adjust_horiz ${X_50_C} ${W_50}

choice=${1:-$(run_menu)}
if [ -z "${choice}" ]; then
    exit 0
fi

case ${choice} in
    L25) win_adjust_horiz ${X_25_L} ${W_25} ;;
    L33) win_adjust_horiz ${X_33_L} ${W_33} ;;
    L50) win_adjust_horiz ${X_50_L} ${W_50} ;;
    C25) win_adjust_horiz ${X_25_C} ${W_25} ;;
    C33) win_adjust_horiz ${X_33_C} ${W_33} ;;
    C50) win_adjust_horiz ${X_50_C} ${W_50} ;;
    C66) win_adjust_horiz ${X_66_C} ${W_66} ;;
    R25) win_adjust_horiz ${X_25_R} ${W_25} ;;
    R33) win_adjust_horiz ${X_33_R} ${W_33} ;;
    R50) win_adjust_horiz ${X_50_R} ${W_50} ;;
    U33) win_adjust_vert  ${Y_33_U} ${H_33} ;;
    U50) win_adjust_vert  ${Y_50_U} ${H_50} ;;
    D33) win_adjust_vert  ${Y_33_D} ${H_33} ;;
    D50) win_adjust_vert  ${Y_50_D} ${H_50} ;;
    *) echo "Unknown choice '${choice}'!" ;;
esac
