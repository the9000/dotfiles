;; Editing settings

; default font
; -unknown-DejaVu Sans Mono-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1
(set-default-font "-unknown-DejaVu Sans Mono-normal-normal-normal-*-*-90-*-*-m-0-iso10646-1")

; use only spaces and no tabs
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)

;; OSX-specific: font rendering
(setq line-spacing 1)
(setq mac-allow-anti-aliasing nil)


;; set frame title to filename
(setq frame-title-format
  '("" invocation-name ": "(:eval (if (buffer-file-name)
                (abbreviate-file-name (buffer-file-name))
                  "%* %b"))))

;; Make buffer names short and unique
(require 'uniquify)
(setq
 uniquify-buffer-name-style 'post-forward
 uniquify-separator ":")
