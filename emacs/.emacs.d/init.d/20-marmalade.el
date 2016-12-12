(add-to-list 'load-path "~/.emacs.d/vendors/" t)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "https://marmalade-repo.org/packages/"))
(package-initialize)
