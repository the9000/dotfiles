# Add auto-completion and a stored history file of commands to your Python
# interactive interpreter. Requires Python 2.0+, readline. Autocomplete is
# bound to the Esc key by default (you can change it - see readline docs).
#
# Store the file in ~/.pystartup, and set an environment variable to point
# to it:  "export PYTHONSTARTUP=/home/gsf/.pystartup" in bash.
#
# Note that PYTHONSTARTUP does *not* expand "~", so you have to put in the
# full path to your home directory.

# NOTE: if the history file was empty and now an IOError happens when it
# is read, append this to the top:
# _HiStOrY_V2_
# This is OSX's libedit that feigns being readline.

import atexit
import os
import sys


def setupReadlineAndHistory(history_path):
  try:
    import readline
    import rlcompleter
    import sys
    if(sys.platform == 'darwin') and 'libedit' in readline.__doc__:
        readline.parse_and_bind ("bind ^I rl_complete") # OSX-compatible
    else:
      readline.parse_and_bind("tab: complete")  # Linux-compatible
    # prepare history saving
    def save_history(history_path=history_path):
        import readline
        readline.write_history_file(history_path)

    if os.path.exists(history_path):
        readline.read_history_file(history_path)

    atexit.register(save_history)
    del readline, rlcompleter
  except ImportError:
    print("# readline is not available; no completion or history.")


def setupPrompt():
  try:
    getter = os.getenvb  # py3
  except AttributeError:
    getter = os.getenv  # py2
  # TODO: handle unicode in Py3 envs.
  sys.ps1 = getter(b'PYTHON_PS1', b'>>> ').decode('unicode_escape')
  sys.ps2 = getter(b'PYTHON_PS2', b'... ').decode('unicode_escape')

# main
setupReadlineAndHistory(os.path.expanduser("~/.pyhistory"))
setupPrompt()

# anything not deleted will remain in the interpreter session
del atexit, os, sys
