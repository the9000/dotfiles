# Activate Python startup settings (mostly for REPL).
if [ -r ~/.pystartup.py ]; then
   export PYTHONSTARTUP="$HOME/.pystartup.py"
fi
