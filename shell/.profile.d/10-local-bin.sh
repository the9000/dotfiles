# Add ~/bin/ to path if it's there.
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
