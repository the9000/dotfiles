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
 '(fic-highlighted-words (quote ("FIXME" "TODO" "REDFLAG" "XXX" "NOTE")))
 '(haskell-mode-hook (quote (turn-on-haskell-indentation)))
 '(package-archives (quote (("marmalade" . "https://marmalade-repo.org/packages/") ("melpa" . "http://melpa.milkbox.net/packages/") ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(py-indent-offset 2 t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "grey24" :foreground "gainsboro" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 80 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(column-enforce-face ((t (:background "DeepSkyBlue4"))))
 '(comint-highlight-input ((t (:foreground "sandy brown" :weight bold))))
 '(comint-highlight-prompt ((t (:foreground "green1"))))
 '(cursor ((t (:background "#fc0"))))
 '(flymake-infoline ((((class color) (background dark)) (:background "DarkRed"))))
 '(font-lock-comment-face ((t (:foreground "IndianRed1"))))
 '(font-lock-doc-face ((t (:foreground "salmon"))))
 '(font-lock-fic-author-face ((((class color)) (:foreground "yellow"))))
 '(font-lock-fic-face ((((class color)) (:background "magenta3" :foreground "yellow" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "gold" :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "SandyBrown"))))
 '(font-lock-string-face ((t (:foreground "LimeGreen" :weight bold))))
 '(font-lock-type-face ((t (:foreground "cyan2" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "LightGoldenrod"))))
 '(highlight-indent-face ((t (:background "gray23"))))
 '(highlight-indentation-current-column-face ((t (:background "gray20"))))
 '(highlight-indentation-face ((t (:background "gray22"))))
 '(hl-line ((t (:inherit highlight :background "gray16"))))
 '(ido-first-match ((t (:foreground "salmon" :weight bold))))
 '(ido-only-match ((((class color)) (:foreground "SpringGreen"))))
 '(ido-subdir ((((min-colors 88) (class color)) (:foreground "orange"))))
 '(linum ((t (:inherit (shadow default) :background "gray20" :foreground "yellow4"))))
 '(org-level-1 ((t (:foreground "gray75" :underline t :height 1.5))))
 '(outline-1 ((t (:foreground "Cyan2"))))
 '(outline-2 ((t (:foreground "pale green"))))
 '(outline-3 ((t (:foreground "khaki"))))
 '(outline-4 ((t (:foreground "burlywood"))))
 '(sh-quoted-exec ((((class color) (background dark)) (:foreground "DarkOliveGreen1" :weight bold))))
 '(show-paren-match ((t (:background "sienna4"))))
 '(web-mode-html-tag-face ((t (:inherit font-lock-function-name-face))))
 '(web-mode-variable-name-face ((t (:inherit font-lock-constant-face :weight bold)))))

;; Note: work around a bug that breaks cursor color setting via customize.
;; cursor color for all new frames;
;; plain set-cursor-color is ineffective.
(add-to-list 'default-frame-alist '(cursor-color . "#0f0"))

(message ".emacs done")
