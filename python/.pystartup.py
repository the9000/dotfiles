# Add auto-completion and a stored history file of commands to your Python
# interactive interpreter. Requires Python 2.0+, readline. Autocomplete is
# bound to the Esc key by default (you can change it - see readline docs).
#
# Store the file in ~/.pystartup, and set an environment variable to point
# to it:  "export PYTHONSTARTUP=/home/gsf/.pystartup" in bash.
#
# Note that PYTHONSTARTUP does *not* expand "~", so you have to put in the
# full path to your home directory.

import atexit
import os
import readline
import rlcompleter
import sys

# change autocomplete to tab
readline.parse_and_bind("tab: complete")

historyPath = os.path.expanduser("~/.pyhistory")

def save_history(historyPath=historyPath):
    import readline
    readline.write_history_file(historyPath)

if os.path.exists(historyPath):
    readline.read_history_file(historyPath)

atexit.register(save_history)

sys.ps1 = os.getenv('PYTHON_PS1', '>>> ').decode('string_escape')
sys.ps2 = os.getenv('PYTHON_PS2', '... ').decode('string_escape')

# anything not deleted (sys and os) will remain in the interpreter session
del atexit, readline, rlcompleter, save_history, historyPath, sys