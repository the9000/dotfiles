;; Color theme settings

(if (not (fboundp 'color-theme))
  (color-theme-initialize)
  nil
)
(require 'color-theme)
;; XXX (color-theme-gray30)
; TODO: consider a fully custom theme

(global-hl-line-mode t) ; highlight current line for all modes by default
(set-face-background 'hl-line "gray24") ;; current line
(set-face-background 'fringe "gray16")

(set-cursor-color "green")

;; The rest of coloring is done via customize and lives in .emacs
