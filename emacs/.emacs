; load the modularized settings

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load-file "~/.emacs.d/init.el")

;; Anything after this point is set via customize commands.
;; Not to be edited by hand.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fic-highlighted-words (quote ("FIXME" "TODO" "BUG" "REDFLAG" "XXX")))
 '(global-hl-line-mode t)
 '(haskell-mode-hook (quote (turn-on-haskell-indentation)))
 '(haskell-process-type (quote stack-ghci))
 '(haskell-program-name "stack ghci \"+.\"")
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "gray")
     ("NEXT" . "#dca3a3")
     ("OKAY" . "white")
     ("FAIL" . "#8c5353")
     ("NOTE" . "white")
     ("HACK" . "black")
     ("FIXME" . "yellow")
     ("XXX" . "yellow")
     ("???" . "cyan"))))
 '(ispell-program-name "aspell")
 '(org-agenda-files (quote ("~/personal/plan/master-plan.org")))
 '(org-agenda-restore-windows-after-quit t)
 '(org-priority-faces (quote ((67 . "goldenrod4") (65 . "yellow"))))
 '(org-todo-keyword-faces
   (quote
    (("WIP" . "yellow")
     ("CANCEL" . "cyan3")
     ("WAIT" . "gray")
     ("FAIL" . "MediumOrchid3"))))
 '(package-archives
   (quote
    (("melpa" . "https://melpa.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(package-selected-packages
   (quote
    (toml-mode unicode-enbox helm-ag helm-flymake helm-flyspell helm-fuzzy-find helm-git-grep helm-ls-git nlinum pytest hl-todo highlight-indent-guides kotlin-mode org python-docstring column-enforce-mode flycheck flycheck-pyflakes highlight-symbol web-mode flyspell-lazy js2-mode magit markdown-mode virtualenvwrapper ace-window flymake-hlint haskell-mode color-theme-modern)))
 '(python-shell-interpreter "python3")
 '(venv-location "~/venvs"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "grey16" :foreground "gainsboro" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(column-enforce-face ((t (:background "DodgerBlue4"))))
 '(comint-highlight-input ((t (:foreground "pale green" :weight bold))))
 '(flymake-infoline ((((class color) (background dark)) (:background "DarkRed"))))
 '(font-lock-comment-face ((t (:foreground "IndianRed1"))))
 '(font-lock-doc-face ((t (:foreground "pink2"))))
 '(font-lock-fic-author-face ((((class color)) (:foreground "yellow"))))
 '(font-lock-fic-face ((((class color)) (:background "magenta3" :foreground "yellow" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "gold2" :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "SandyBrown"))))
 '(font-lock-string-face ((t (:foreground "LimeGreen" :weight bold))))
 '(font-lock-type-face ((t (:foreground "cyan2" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "LightGoldenrod"))))
 '(haskell-interactive-face-prompt ((t (:foreground "green"))))
 '(highlight-indent-face ((t (:background "gray34"))))
 '(highlight-indent-guides-even-face ((t (:background "grey16"))))
 '(highlight-symbol-face ((t (:underline "green"))))
 '(hl-line ((t (:inherit highlight :background "gray8"))))
 '(hl-todo ((t (:background "magenta3" :foreground "yellow" :weight bold))))
 '(ido-only-match ((((class color)) (:foreground "SpringGreen"))))
 '(ido-subdir ((((min-colors 88) (class color)) (:foreground "orange"))))
 '(italic ((t (:slant italic))))
 '(linum ((t (:inherit (shadow default) :background "gray20" :foreground "yellow4"))))
 '(markdown-italic-face ((t (:inherit italic :slant italic))))
 '(markdown-markup-face ((t (:inherit success :slant normal :weight normal))))
 '(org-checkbox ((t (:inherit org-date :underline nil))))
 '(org-level-1 ((t (:inherit outline-1 :overline t :height 1.33))))
 '(org-tag ((t (:box (:line-width 2 :color "gray50" :style released-button) :weight bold))))
 '(org-todo ((t (:foreground "Pink" :inverse-video t :weight bold))))
 '(outline-1 ((t (:foreground "Cyan2"))))
 '(outline-2 ((t (:foreground "pale green"))))
 '(outline-3 ((t (:foreground "khaki"))))
 '(outline-4 ((t (:foreground "burlywood"))))
 '(sh-quoted-exec ((((class color) (background dark)) (:foreground "DarkOliveGreen1" :weight bold))))
 '(web-mode-html-tag-bracket-face ((t (:inherit font-lock-keyword-face))))
 '(web-mode-html-tag-custom-face ((t (:inherit font-lock-function-name-face))))
 '(web-mode-html-tag-face ((t (:inherit font-lock-keyword-face)))))
