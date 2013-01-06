;; Color theme settings

(require 'color-theme)
;;(color-theme-initialize)
(color-theme-gray30)
; TODO: consider a fully custom theme

(global-hl-line-mode t) ; highlight current line for all modes by default
(set-face-background 'hl-line "gray24") ;; current line
(set-face-background 'fringe "gray16") 

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:foreground "IndianRed1"))))
 '(font-lock-function-name-face ((t (:foreground "LightYellow1" :weight bold))))
 '(font-lock-string-face ((t (:foreground "LimeGreen" :weight bold)))))

;; NOTE: if a face customization sets something in ~/.emacs,
;; it has to manually be moved here, to keep ~/.emacs clean.