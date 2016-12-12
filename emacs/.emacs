; load the modularized settings
(load-file "~/.emacs.d/init.el")

; default font
;; (set-default-font "-unknown-DejaVu Sans Mono-normal-normal-normal-*-*-90-*-*-m-0-iso10646-1")

;; Anything after this point is set via customize commands.
;; Not to be edited by hand.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ag-executable "/usr/local/bin/ag")
 '(custom-safe-themes
   (quote
    ("3ddfde8b6afe9a72749b73b021ffd5a837f6b9d5c638f7c16d81ec9d346d899f" default)))
 '(fic-highlighted-words (quote ("FIXME" "TODO" "REDFLAG" "XXX" "NOTE")))
 '(fixmee-notice-regexp
   "\\(@@@+\\|\\_<\\(?:[Tt][Oo][Dd][Oo]+\\|[Ff][Ii][Xx][Mm][Ee]+\\|XXX+\\|YYY+\\)\\)\\(?:[/:?!. 	
]+\\|-+\\(?:\\s-\\|[
]\\)\\|\\_>\\)")
 '(haskell-mode-hook (quote (turn-on-haskell-indentation)))
 '(package-archives
   (quote
    (("marmalade" . "https://marmalade-repo.org/packages/")
     ("melpa" . "http://melpa.milkbox.net/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(py-indent-offset 2 t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "grey16" :foreground "honeydew3" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "nil" :family "DejaVu Sans Mono"))))
 '(column-enforce-face ((t (:background "DeepSkyBlue4"))))
 '(comint-highlight-input ((t (:foreground "sandy brown" :weight bold))))
 '(comint-highlight-prompt ((t (:foreground "green1"))))
 '(cursor ((t (:background "#fc0"))))
 '(fixmee-notice-face ((t (:background "magenta3" :foreground "yellow"))))
 '(flymake-infoline ((((class color) (background dark)) (:background "DarkRed"))))
 '(font-lock-comment-face ((t (:foreground "IndianRed1" :slant normal))))
 '(font-lock-doc-face ((t (:foreground "salmon"))))
 '(font-lock-fic-author-face ((((class color)) (:foreground "yellow"))))
 '(font-lock-fic-face ((((class color)) (:background "magenta3" :foreground "yellow" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "gold2" :weight bold :height 1.0))))
 '(font-lock-keyword-face ((t (:foreground "SandyBrown" :height 1.0))))
 '(font-lock-string-face ((t (:foreground "LimeGreen" :weight bold))))
 '(font-lock-type-face ((t (:foreground "cyan2" :weight bold :height 1.0))))
 '(font-lock-variable-name-face ((t (:foreground "LightGoldenrod"))))
 '(highlight-indent-face ((t (:background "gray23"))))
 '(highlight-indent-guides-even-face ((t (:background "gray16"))))
 '(highlight-indentation-current-column-face ((t (:background "gray20"))))
 '(highlight-indentation-face ((t (:background "gray22"))))
 '(hl-line ((t (:inherit highlight :background "gray10"))))
 '(ido-first-match ((t (:foreground "salmon" :weight bold))))
 '(ido-only-match ((((class color)) (:foreground "SpringGreen"))))
 '(ido-subdir ((((min-colors 88) (class color)) (:foreground "orange"))))
 '(js2-external-variable ((t (:foreground "violet"))))
 '(js2-function-param ((t (:foreground "SeaGreen2"))))
 '(linum ((t (:inherit (shadow default) :background "gray20" :foreground "yellow4"))))
 '(magit-blame-heading ((t (:background "grey25" :foreground "deep sky blue"))))
 '(org-level-1 ((t (:foreground "gray75" :underline t :height 1.5))))
 '(outline-1 ((t (:foreground "Cyan2"))))
 '(outline-2 ((t (:foreground "pale green"))))
 '(outline-3 ((t (:foreground "khaki"))))
 '(outline-4 ((t (:foreground "burlywood"))))
 '(sh-heredoc ((t (:foreground "aquamarine2" :weight bold))))
 '(sh-quoted-exec ((((class color) (background dark)) (:foreground "DarkOliveGreen1" :weight bold))))
 '(show-paren-match ((t (:background "sienna4"))))
 '(web-mode-html-tag-face ((t (:inherit font-lock-function-name-face))))
 '(web-mode-variable-name-face ((t (:inherit font-lock-constant-face :weight bold)))))

;; Note: work around a bug that breaks cursor color setting via customize.
;; cursor color for all new frames;
;; plain set-cursor-color is ineffective.
(add-to-list 'default-frame-alist '(cursor-color . "#0f0"))

(message ".emacs done")
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
