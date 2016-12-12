;; Color theme settings

;(if (not (fboundp 'color-theme))
;  (color-theme-initialize)
;  nil
;)
(require 'color-theme)
(load-theme 'gray30)
; TODO: consider a fully custom theme

(global-hl-line-mode t) ; highlight current line for all modes by default
(set-face-background 'hl-line "gray16") ;; current line
(set-face-background 'fringe "gray16")

;; The rest of coloring is done via customize and lives in .emacs
