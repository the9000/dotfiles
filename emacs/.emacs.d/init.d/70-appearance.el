;; Editing settings

; default font
(set-default-font "-unknown-DejaVu Sans Mono-normal-normal-normal-*-*-80-*-*-m-0-iso10646-1")

; use only spaces and no tabs
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)

; we want line numbers everywhere
(global-linum-mode t)

; column numbes everywhere
(column-number-mode t)

(setq show-trailing-whitespace t) ;; highlight it everywhere

;; set frame title to filename
(setq frame-title-format
  '("" invocation-name ": "(:eval (if (buffer-file-name)
                (abbreviate-file-name (buffer-file-name))
                  "%* %b"))))

;; Toolbar
(tool-bar-mode 0)

;; make buffer names short and unique
(require 'uniquify)
(setq
 uniquify-buffer-name-style 'post-forward
 uniquify-separator ":")

