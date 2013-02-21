; load the modularized settings
(load-file "~/.emacs.d/init.el")

; default font
(set-default-font "-unknown-DejaVu Sans Mono-normal-normal-normal-*-*-90-*-*-m-0-iso10646-1")

(setq-default indent-tabs-mode nil)    ; use only spaces and no tabs
(setq default-tab-width 4)

(global-linum-mode t) ; we want line numbers everywhere

(setq show-trailing-whitespace t) ;; highlight it everywhere

;; That's it.
