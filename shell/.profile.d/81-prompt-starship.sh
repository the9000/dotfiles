# Run starship if exists.
if [ -x "$(which starship)" ]; then
    source <($(which starship) init bash --print-full-init)
fi
