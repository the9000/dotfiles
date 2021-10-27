if [ "${DISPLAY}" ] && [ -x $(which xbanish) ]; then
  xbanish -i control -i mod3 -i mod4 &
  disown %1
fi
