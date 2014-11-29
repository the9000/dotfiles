# [bin/](bin)
* `E` and `EE` help open files in emcas clients from command line.
* `N2` shows a huge status banner when a long-running process completes.
* `ghci.sh` tries to autodetect the presence of cabal sandbox and use it when
  invoking `ghci`.

# [emacs/](emacs)
* `~/.emacs.d/init.el`: load user config files, skipping non-existent ones.
* `init.d/`: initialization factored by concerns.
The `~/.emacs` file can be drastically reduced.

# [git/](git)
* `.gitconfig`: useful aliases. 

# [ghc/](ghc)
* `.ghci.conf` with a nicer prompt.

# [python/](python)
* `.pystartup` to add tab-completion, history, and nicer prompts to Python 2.x.

# [shell/](shell)
* `setup-prompt`: tries to create a well-visible prompt usable from
  inside terminal emulators,  Linux console, and via tmux.
* `setup-keyboard`: adds an alternate keyboard layout if under X.
* `setup-term`: sets TERM to 256 colors circumventing an issue in vte.

# [tmux/](tmux)
* `.tmux.conf`: usual stuff, like colors and easier key bindings.

