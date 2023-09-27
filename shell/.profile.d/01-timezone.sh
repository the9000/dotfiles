# Set timezone is present.
# The `timezone` file must have a single line like America/New_York
if [ -r $HOME/timezone ]; then 
    export TZ="/usr/share/zoneinfo/$(cat $HOME/timezone)"
fi
