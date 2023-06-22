# Do not beep under X.
if [ -n "$DISPLAY" ]; then
    xset -b off
fi
