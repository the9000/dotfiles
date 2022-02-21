if [ "${DISPLAY}" ] && \
       [ -x "$(which xbanish)" ] && \
       [ -z "$(ps a | grep $(which xbanish) | grep -v grep)" ]
then
  # NOTE: Running with full path to make it greppable above.
  $(which xbanish) -i control -i mod3 -i mod4 &
  disown %1
fi
