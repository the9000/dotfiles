; load the modularized settings
(load-file "~/.emacs.d/init.el")

;; Anything after this point is set via customize commands.
;; Not to be edited by hand.

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(fic-highlighted-words (quote ("FIXME" "TODO" "BUG" "REDFLAG" "XXX")))
 '(haskell-mode-hook (quote (turn-on-haskell-indentation))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(comint-highlight-prompt ((t (:foreground "green1"))))
 '(cursor ((t (:background "black" :foreground "coral"))))
 '(flymake-infoline ((((class color) (background dark)) (:background "DarkRed"))))
 '(font-lock-comment-face ((t (:foreground "IndianRed1"))))
 '(font-lock-doc-face ((t (:foreground "pink2"))))
 '(font-lock-fic-author-face ((((class color)) (:foreground "yellow"))))
 '(font-lock-fic-face ((((class color)) (:background "magenta3" :foreground "yellow" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "yellow" :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "SandyBrown"))))
 '(font-lock-string-face ((t (:foreground "LimeGreen" :weight bold))))
 '(font-lock-type-face ((t (:foreground "cyan2" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "LightGoldenrod"))))
 '(highlight-indent-face ((t (:background "gray34"))))
 '(ido-only-match ((((class color)) (:foreground "SpringGreen"))))
 '(ido-subdir ((((min-colors 88) (class color)) (:foreground "orange"))))
 '(linum ((t (:inherit (shadow default) :background "gray20" :foreground "yellow4"))))
 '(outline-1 ((t (:foreground "Cyan2"))))
 '(outline-2 ((t (:foreground "pale green"))))
 '(outline-3 ((t (:foreground "khaki"))))
 '(outline-4 ((t (:foreground "burlywood"))))
 '(sh-quoted-exec ((((class color) (background dark)) (:foreground "DarkOliveGreen1" :weight bold)))))
