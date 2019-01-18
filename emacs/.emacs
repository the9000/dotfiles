; load the modularized settings

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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
 '(auth-sources (quote ("~/.authinfo" "~/.authinfo.gpg" "~/.netrc")))
 '(custom-safe-themes
   (quote
    ("3ddfde8b6afe9a72749b73b021ffd5a837f6b9d5c638f7c16d81ec9d346d899f" default)))
 '(fic-highlighted-words (quote ("FIXME" "TODO" "REDFLAG" "XXX" "NOTE")))
 '(fixmee-notice-regexp
   "\\(@@@+\\|\\_<\\(?:[Tt][Oo][Dd][Oo]+\\|[Ff][Ii][Xx][Mm][Ee]+\\|XXX+\\|YYY+\\)\\)\\(?:[/:?!. 	
]+\\|-+\\(?:\\s-\\|[
]\\)\\|\\_>\\)")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(flycheck-navigation-minimum-level (quote warning))
 '(flycheck-python-pylint-executable "/Users/dcheryasov/work/venvs/svc-scripts/bin/pylint")
 '(haskell-mode-hook (quote (turn-on-haskell-indentation)))
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . font-lock-type-face)
     ("NEXT" . "burlywood1")
     ("FAIL" . "cyan")
     ("NOTE" . font-lock-string-face)
     ("HACK" . "green")
     ("FIXME" . "yellow")
     ("XXX" . "yellow")
     ("DONE" . font-lock-string-face))))
 '(ibuffer-filter-group-name-face (quote font-lock-function-name-face))
 '(ibuffer-fontification-alist
   (quote
    ((10 buffer-read-only font-lock-constant-face)
     (15
      (and buffer-file-name
           (string-match ibuffer-compressed-file-name-regexp buffer-file-name))
      font-lock-doc-face)
     (20
      (string-match "^*"
                    (buffer-name))
      font-lock-keyword-face)
     (25
      (and
       (string-match "^ "
                     (buffer-name))
       (null buffer-file-name))
      italic)
     (30
      (memq major-mode ibuffer-help-buffer-modes)
      font-lock-string-face)
     (35
      (derived-mode-p
       (quote dired-mode))
      font-lock-function-name-face))))
 '(ispell-extra-args (quote ("\"--sug-mode=fast\"")))
 '(ispell-highlight-face (quote flyspell-incorrect))
 '(ispell-program-name "/usr/local/bin/aspell")
 '(json-reformat:indent-width 2)
 '(magit-diff-refine-hunk t)
 '(magithub-clone-default-directory nil)
 '(magithub-dir "/Users/dcheryasov/.cache/magithub")
 '(markdown-command "/usr/local/bin/pandoc --from=markdown --to=html")
 '(org-agenda-window-setup (quote other-window))
 '(org-drawers (quote ("PROPERTIES" "CLOCK" "LOGBOOK" "RESULTS" "MORE")))
 '(org-priority-faces (quote ((67 . "firebrick4") (65 . "cyan"))))
 '(org-src-window-setup (quote other-frame))
 '(org-todo-keyword-faces
   (quote
    (("WAIT" . "gray")
     ("WIP" . "yellow")
     ("CANCEL" . "cyan3")
     ("FAIL" . "MediumOrchid3"))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "WIP(p)" "WAIT(w)" "|" "CANCEL(c)" "DONE(d)" "FAIL(f)"))))
 '(package-archives
   (quote
    (("marmalade" . "https://marmalade-repo.org/packages/")
     ("melpa" . "http://melpa.milkbox.net/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(package-selected-packages
   (quote
    (browse-kill-ring magithub highline crosshairs groovy-mode magit-todos helm-org-rifle gradle-mode helm helm-core helm-descbinds helm-describe-modes helm-dired-recent-dirs helm-flymake helm-flyspell helm-fuzzy-find helm-ls-git helm-ag lsp-mode lsp-python flycheck-color-mode-line json-mode htmlize ztree ensime scala-mode flycheck-kotlin kotlin-mode ibuffer-vc dockerfile-mode gitconfig-mode god-mode multi-term hl-todo popwin pytest python-docstring org origami emacsql-sqlite pylint restclient pydoc crontab-mode pip-requirements toml-mode yaml-mode jira-markup-mode highlight-symbol virtualenvwrapper ag flyspell-lazy git-commit git-gutter markdown-mode nlinum php-mode sql-indent string-inflection find-file-in-repository flycheck ace-jump-mode ace-window color-theme-modern column-enforce-mode highlight-indent-guides fixmee js2-mode magit web-mode color-theme)))
 '(py-indent-offset 2 t)
 '(pylint-command "/Users/dcheryasov/work/venvs/svc-scripts/bin/prospector")
 '(pylint-options (quote ("--output-format=emacs")))
 '(sentence-end-double-space nil)
 '(venv-location "/Users/dcheryasov/work/venvs/"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "grey16" :foreground "gainsboro" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "nil" :family "DejaVu Sans Mono"))))
 '(column-enforce-face ((t (:background "DeepSkyBlue4"))))
 '(comint-highlight-input ((t (:foreground "sandy brown" :weight bold))))
 '(comint-highlight-prompt ((t (:foreground "green1"))))
 '(cursor ((t (:background "#fc0"))))
 '(ediff-even-diff-A ((t (:background "purple4"))))
 '(ediff-even-diff-B ((t (:background "DarkSeaGreen4"))))
 '(ediff-odd-diff-A ((t (:background "CadetBlue4"))))
 '(ediff-odd-diff-B ((t (:background "orange4"))))
 '(error ((t (:foreground "tomato" :weight bold))))
 '(fixmee-notice-face ((t (:background "magenta3" :foreground "yellow"))))
 '(flycheck-error ((t (:underline (:color "Red1" :style wave)))))
 '(flycheck-error-list-checker-name ((t (:inherit font-lock-keyword-face))))
 '(flycheck-error-list-error ((t (:inherit error))))
 '(flycheck-error-list-id-with-explainer ((t (:inherit flycheck-error-list-id))))
 '(flycheck-error-list-info ((t (:inherit shadow))))
 '(flycheck-fringe-error ((t (:background "red" :foreground "yellow"))))
 '(flycheck-fringe-info ((t (:foreground "green4"))))
 '(flymake-infoline ((((class color) (background dark)) (:background "DarkRed"))))
 '(flyspell-duplicate ((t (:underline (:color "cornflower blue" :style wave)))))
 '(flyspell-incorrect ((t (:underline (:color "yellow" :style wave)))))
 '(font-lock-comment-face ((t (:foreground "IndianRed1" :slant normal))))
 '(font-lock-doc-face ((t (:foreground "salmon"))))
 '(font-lock-fic-author-face ((((class color)) (:foreground "yellow"))))
 '(font-lock-fic-face ((((class color)) (:background "magenta3" :foreground "yellow" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "gold2" :weight bold :height 1.0))))
 '(font-lock-keyword-face ((t (:foreground "SandyBrown" :height 1.0))))
 '(font-lock-string-face ((t (:foreground "LimeGreen" :weight bold))))
 '(font-lock-type-face ((t (:foreground "cyan2" :weight bold :height 1.0))))
 '(font-lock-variable-name-face ((t (:foreground "LightGoldenrod"))))
 '(hi-blue-b ((t (:background "dark slate blue" :foreground "DeepSkyBlue1" :weight bold))))
 '(highlight-indent-face ((t (:background "gray23"))))
 '(highlight-indent-guides-character-face ((t (:foreground "#4c4c4c"))))
 '(highlight-indent-guides-even-face ((t (:background "gray16"))))
 '(highlight-indent-guides-odd-face ((t (:background "gray20"))))
 '(highlight-indentation-current-column-face ((t (:background "gray20"))))
 '(highlight-indentation-face ((t (:background "gray22"))))
 '(highlight-symbol-face ((t (:background "black" :underline "SpringGreen1"))))
 '(hl-line ((t (:inherit highlight :background "gray10"))))
 '(hl-todo ((t (:background "magenta3" :foreground "yellow" :weight bold))))
 '(ido-first-match ((t (:foreground "salmon" :weight bold))))
 '(ido-only-match ((((class color)) (:foreground "SpringGreen"))))
 '(ido-subdir ((((min-colors 88) (class color)) (:foreground "orange"))))
 '(js2-external-variable ((t (:foreground "violet"))))
 '(js2-function-param ((t (:foreground "SeaGreen2"))))
 '(linum ((t (:inherit (shadow default) :background "gray20" :foreground "yellow4"))))
 '(magit-blame-heading ((t (:background "grey25" :foreground "deep sky blue"))))
 '(magit-diff-file-heading ((t (:foreground "turquoise2" :weight bold))))
 '(magit-hash ((t (:foreground "chartreuse3"))))
 '(magit-head ((t (:foreground "orange"))))
 '(magit-section-heading-selection ((t (:background "dark slate gray"))))
 '(magit-section-highlight ((t (:background "dark slate gray"))))
 '(magithub-ci-error ((t (:inherit error))))
 '(magithub-ci-failure ((t (:foreground "orchid1"))))
 '(magithub-notification-reason ((t (:inherit magit-header-line))))
 '(markdown-code-face ((t (:foreground "cyan2"))))
 '(markdown-markup-face ((t (:foreground "green3" :slant normal :weight normal))))
 '(org-checkbox ((t (:inherit org-date :underline nil))))
 '(org-level-1 ((t (:foreground "PaleTurquoise1" :overline t :height 1.5 :family "DejaVu Sans"))))
 '(org-level-2 ((t (:inherit outline-2 :overline t :height 1.1))))
 '(org-tag ((t (:box (:line-width 1 :color "grey50" :style released-button)))))
 '(org-todo ((t (:foreground "Pink" :inverse-video t :weight bold))))
 '(outline-1 ((t (:foreground "Cyan2"))))
 '(outline-2 ((t (:foreground "pale green"))))
 '(outline-3 ((t (:foreground "khaki"))))
 '(outline-4 ((t (:foreground "burlywood"))))
 '(package-status-dependency ((t (:inherit font-lock-function-name-face))))
 '(package-status-installed ((t (:inherit font-lock-string-face))))
 '(sh-heredoc ((t (:foreground "aquamarine2" :weight bold))))
 '(sh-quoted-exec ((((class color) (background dark)) (:foreground "DarkOliveGreen1" :weight bold))))
 '(show-paren-match ((t (:background "sienna4"))))
 '(smerge-lower ((t (:background "#224433"))))
 '(smerge-refined-added ((t (:inherit smerge-refined-change :background "dark green"))))
 '(smerge-refined-removed ((t (:inherit smerge-refined-change :background "red4"))))
 '(variable-pitch ((t (:family "DejaVu Sans"))))
 '(web-mode-html-attr-name-face ((t (:foreground "light green"))))
 '(web-mode-html-tag-face ((t (:inherit font-lock-function-name-face))))
 '(web-mode-json-key-face ((t (:foreground "goldenrod2"))))
 '(web-mode-variable-name-face ((t (:inherit font-lock-constant-face :weight bold)))))

;; Note: work around a bug that breaks cursor color setting via customize.
;; cursor color for all new frames;
;; plain set-cursor-color is ineffective.
(add-to-list 'default-frame-alist '(cursor-color . "#0f0"))

(message ".emacs done")
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'erase-buffer 'disabled nil)
