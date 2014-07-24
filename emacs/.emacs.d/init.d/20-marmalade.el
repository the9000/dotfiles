(add-to-list 'load-path "~/.emacs.d/vendors/" t)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
