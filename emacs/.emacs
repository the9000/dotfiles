; load the modularized settings

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load-file "~/.emacs.d/init.el")

;; Default font setting is per frame, so it cannot easily live in .emacs.d/
;; which runs once per process.
;; TODO: Rely completely of the default face.(set-frame-font "DejaVu Sans Mono 9")

;; Not to be edited by hand.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ag-context-lines 1)
 '(ag-executable "ag")
 '(auth-source-save-behavior nil)
 '(auth-sources '("~/.authinfo" "~/.authinfo.gpg" "~/.netrc"))
 '(aw-dispatch-always nil)
 '(aw-dispatch-when-more-than 1)
 '(aw-keys '(97 115 100 102 106 107 108 103 104 101 114 117 105))
 '(company-inhibit-inside-symbols t)
 '(company-quick-access-keys '("a" "s" "d" "f" "g" "h" "j" "k" "l" ";"))
 '(company-show-quick-access 'left)
 '(custom-safe-themes
   '("3ddfde8b6afe9a72749b73b021ffd5a837f6b9d5c638f7c16d81ec9d346d899f"
     default))
 '(display-line-numbers-major-tick 10)
 '(display-line-numbers-widen t)
 '(ediff-make-buffers-readonly-at-startup t)
 '(ediff-split-window-function 'split-window-horizontally)
 '(ediff-window-setup-function 'ediff-setup-windows-plain)
 '(fic-highlighted-words '("FIXME" "TODO" "REDFLAG" "XXX" "NOTE"))
 '(fixmee-notice-regexp
   "\\(@@@+\\|\\_<\\(?:[Tt][Oo][Dd][Oo]+\\|[Ff][Ii][Xx][Mm][Ee]+\\|XXX+\\|YYY+\\)\\)\\(?:[/:?!. \11\15\12\14\13]+\\|-+\\(?:\\s-\\|[\15\12\14\13]\\)\\|\\_>\\)")
 '(flycheck-checker-error-threshold 1000)
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(flycheck-disabled-checkers '(python-mypy))
 '(flycheck-navigation-minimum-level 'warning)
 '(flycheck-python-pylint-executable nil)
 '(global-tree-sitter-mode t)
 '(haskell-mode-hook '(turn-on-haskell-indentation))
 '(help-window-select t)
 '(highlight-changes-colors
   '("yellow" "orange3" "teal" "wheat3" "firebrick" "green4" "DarkOrchid"))
 '(highlight-changes-global-changes-existing-buffers t)
 '(highlight-indent-guides-auto-character-face-perc 20)
 '(highlight-indent-guides-auto-enabled nil)
 '(highlight-indent-guides-auto-even-face-perc 0)
 '(highlight-indent-guides-auto-odd-face-perc 25)
 '(highlight-symbol-idle-delay 0.75)
 '(hl-todo-keyword-faces
   '(("TODO" . font-lock-type-face) ("NEXT" . "burlywood1")
     ("FAIL" . "cyan") ("NOTE" . font-lock-string-face)
     ("HACK" . "green") ("FIXME" . "yellow") ("XXX" . "yellow")
     ("DONE" . font-lock-string-face)))
 '(ibuffer-filter-group-name-face 'font-lock-function-name-face)
 '(ibuffer-fontification-alist
   '((10 buffer-read-only font-lock-constant-face)
     (15
      (and buffer-file-name
           (string-match ibuffer-compressed-file-name-regexp
                         buffer-file-name))
      font-lock-doc-face)
     (20 (string-match "^*" (buffer-name)) font-lock-keyword-face)
     (25
      (and (string-match "^ " (buffer-name)) (null buffer-file-name))
      italic)
     (30 (memq major-mode ibuffer-help-buffer-modes)
         font-lock-string-face)
     (35 (derived-mode-p 'dired-mode) font-lock-function-name-face)))
 '(ido-enable-flex-matching t)
 '(ido-everywhere nil)
 '(ido-mode nil nil (ido))
 '(ispell-extra-args
   '("\"--sug-mode=fast\"" "\"--run-together\""
     "\"--run-together-limit=10\"" "\"--run-together-min=3\""
     "\"--camel-case\""))
 '(ispell-highlight-face 'flyspell-incorrect)
 '(ispell-program-name "aspell")
 '(js-indent-level 2)
 '(json-reformat:indent-width 2)
 '(line-spacing -0.05)
 '(lsp-enable-on-type-formatting nil)
 '(lsp-keep-workspace-alive nil)
 '(lsp-keymap-prefix "C-M-z")
 '(lsp-ui-doc-header t)
 '(lsp-ui-doc-include-signature t)
 '(magit-diff-refine-hunk t)
 '(magit-log-section-commit-count 30)
 '(magit-status-goto-file-position t)
 '(magit-status-margin '(nil age magit-log-margin-width t 18))
 '(magithub-clone-default-directory nil)
 '(magithub-dir "/home/cmb/.cache/magithub")
 '(markdown-command "/usr/local/bin/pandoc --from=markdown --to=html")
 '(orderless-component-separator " +\\|[-/]")
 '(orderless-matching-styles
   '(orderless-literal orderless-initialism orderless-prefixes))
 '(org-agenda-window-setup 'other-window)
 '(org-drawers '("PROPERTIES" "CLOCK" "LOGBOOK" "RESULTS" "MORE"))
 '(org-edit-src-content-indentation 0)
 '(org-ellipsis " ▼")
 '(org-pretty-entities nil)
 '(org-priority-faces '((67 . "firebrick4") (65 . "cyan")))
 '(org-src-window-setup 'other-frame)
 '(org-todo-keyword-faces
   '(("WAIT" . "gray") ("WIP" . "yellow") ("CANCEL" . "cyan3")
     ("FAIL" . "MediumOrchid3")))
 '(org-todo-keywords
   '((sequence "TODO(t)" "WIP(p)" "WAIT(w)" "|" "CANCEL(c)" "DONE(d)"
               "FAIL(f)")))
 '(package-archives
   '(("melpa" . "https://melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")))
 '(package-selected-packages
   '(ace-jump-mode ag ai-code auto-virtualenv auto-virtualenvwrapper
                   browse-kill-ring ccls claude-code clojure-mode
                   color-theme-modern column-enforce-mode company-ghci
                   company-org-block company-shell company-web
                   consult-ag consult-company consult-flyspell
                   crontab-mode csv-mode devcontainer difftastic
                   docker-compose-mode dockerfile-mode dumb-jump
                   editorconfig elisp-slime-nav elixir-mode
                   elixir-ts-mode expand-region
                   find-file-in-repository fixmee flx
                   flycheck-color-mode-line flycheck-kotlin
                   flycheck-mypy flyspell-lazy forge fzf
                   git-commit-ts-mode go-playground god-mode
                   gradle-mode groovy-mode highlight-indent-guides
                   highlight-symbol htmlize ibuffer-projectile
                   ibuffer-vc java-snippets jira-markup-mode
                   js-react-redux-yasnippets js2-mode json-navigator
                   json-par json5-ts-mode just-mode just-ts-mode
                   kotlin-mode kotlin-ts-mode ligature lsp-biome
                   lsp-haskell lsp-java lsp-jedi lsp-pyright lsp-ui
                   lua-mode magit-delta magit-diff-flycheck
                   magit-todos markdown-ts-mode mermaid-ts-mode
                   multi-term nlinum nodejs-repl orderless origami
                   outline-indent ox-jira parinfer-rust-mode pet
                   pip-requirements popwin projectile-variable
                   protobuf-mode protobuf-ts-mode pydoc pylint pytest
                   python-black python-docstring python-mode quelpa
                   recently restclient rust-mode sass-mode scad-mode
                   smart-jump sql-indent string-inflection
                   switchy-window toml-mode tree-sitter-indent
                   tree-sitter-ispell treemacs-projectile
                   treesit-ispell ts-comint uv-mode vc-msg vertico
                   web-mode wfnames whole-line-or-region winnow winum
                   yasnippet-snippets))
 '(package-vc-selected-packages '((lsp-biome :url "https://github.com/cxa/lsp-biome")))
 '(py-indent-offset 2)
 '(py-split-window-on-execute t)
 '(pylint-command "/Users/dcheryasov/work/venvs/svc-scripts/bin/prospector")
 '(pylint-options '("--output-format=emacs"))
 '(safe-local-variable-values
   '((eval column-enforce-n 120) (column-enforce-n . 120)
     (column-enforce-column . 120)))
 '(sentence-end-double-space nil)
 '(show-trailing-whitespace t)
 '(switchy-window-delay 1.0)
 '(switchy-window-minor-mode t)
 '(tree-sitter-major-mode-language-alist
   '((actionscript-mode . actionscript) (ada-mode . ada)
     (agda-mode . agda) (agda2-mode . agda) (arduino-mode . arduino)
     (astro-mode . astro) (fish-mode . fish) (asm-mode . asm)
     (fasm-mode . asm) (masm-mode . asm) (nasm-mode . asm)
     (gas-mode . asm) (sh-mode . bash) (beancount-mode . beancount)
     (bibtex-mode . bibtex) (c-mode . c) (caml-mode . ocaml)
     (clojure-mode . clojure) (lisp-mode . commonlisp)
     (lisp-interaction-mode . commonlisp) (csharp-mode . c-sharp)
     (c++-mode . cpp) (cmake-mode . cmake) (d-mode . d)
     (dart-mode . dart) (dockerfile-mode . dockerfile)
     (css-mode . css) (csv-mode . csv)
     (editorconfig-conf-mode . editorconfig) (elm-mode . elm)
     (elixir-mode . elixir) (emacs-lisp-mode . elisp)
     (erlang-mode . erlang) (ess-r-mode . r) (fennel-mode . fennel)
     (f90-mode . fortran) (fortran-mode . fortran)
     (gdscript-mode . gdscript) (git-commit-mode . gitcommit)
     (git-rebase-mode . git-rebase)
     (gitattributes-mode . gitattributes) (gitignore-mode . gitignore)
     (gleam-mode . gleam) (glsl-mode . glsl) (go-mode . go)
     (gpr-mode . gpr) (groovy-mode . groovy)
     (jenkinsfile-mode . groovy) (haskell-mode . haskell)
     (haxe-mode . haxe) (hcl-mode . hcl) (terraform-mode . hcl)
     (heex-mode . heex) (hlsl-mode . hlsl) (html-mode . html)
     (markdown-mode . markdown) (mhtml-mode . html) (nix-mode . nix)
     (jai-mode . jai) (janet-mode . janet-simple) (java-mode . java)
     (javascript-mode . javascript) (js-mode . javascript)
     (js2-mode . javascript) (js3-mode . javascript)
     (json-mode . json) (jsonc-mode . json) (jsonnet-mode . jsonnet)
     (julia-mode . julia) (kotlin-mode . kotlin) (latex-mode . latex)
     (LaTeX-mode . latex) (llvm-mode . llvm)
     (llvm-mir-mode . llvm-mir) (lua-mode . lua) (magik-mode . magik)
     (makefile-mode . make) (makefile-automake-mode . make)
     (makefile-gmake-mode . make) (makefile-makepp-mode . make)
     (makefile-bsdmake-mode . make) (makefile-imake-mode . make)
     (matlab-mode . matlab) (mermaid-mode . mermaid)
     (meson-mode . meson) (ninja-mode . ninja) (noir-mode . noir)
     (ocaml-mode . ocaml) (org-mode . org) (pascal-mode . pascal)
     (perl-mode . perl) (purescript-mode . purescript)
     (cperl-mode . perl) (php-mode . php) (qss-mode . css)
     (prisma-mode . prisma) (python-mode . python) (pygn-mode . pgn)
     (racket-mode . racket) (rjsx-mode . javascript) (rst-mode . rst)
     (ruby-mode . ruby) (rust-mode . rust) (rustic-mode . rust)
     (scala-mode . scala) (scheme-mode . scheme)
     (solidity-mode . solidity) (smithy-mode . smithy)
     (sql-mode . sql) (svelte-mode . svelte) (swift-mode . swift)
     (tablegen-mode . tablegen) (toml-mode . toml)
     (conf-toml-mode . toml) (tcl-mode . tcl) (tuareg-mode . ocaml)
     (twig-mode . twig) (typescript-ts-mode . typescript)
     (typescript-mode . typescript) (typescript-tsx-mode . tsx)
     (typst-mode . typst) (verilog-mode . verilog) (vhdl-mode . vhdl)
     (nxml-mode . xml) (yaml-mode . yaml) (k8s-mode . yaml)
     (zig-mode . zig)))
 '(venv-location "~/venvs/")
 '(vertico-flat-annotate t)
 '(vertico-mode t)
 '(visual-line-fringe-indicators '(left-curly-arrow nil))
 '(warning-suppress-types '((comp) (comp)))
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-markup-indent-offset 2)
 '(yas-expand-only-for-last-commands '(self-insert-command)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "grey12" :foreground "honeydew3" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight light :height 95 :width normal :foundry "JB" :family "JetBrains Mono"))))
 '(aw-leading-char-face ((t (:background "black" :foreground "red" :height 3.0))))
 '(column-enforce-face ((t (:background "dark slate gray"))))
 '(comint-highlight-input ((t (:foreground "sandy brown" :weight bold))))
 '(comint-highlight-prompt ((t (:foreground "green1"))))
 '(company-echo-common ((t (:foreground "orange"))))
 '(company-tooltip ((t (:background "gray6"))))
 '(company-tooltip-quick-access ((t (:inherit company-tooltip-annotation :foreground "gold"))))
 '(company-tooltip-scrollbar-thumb ((t (:background "dark sea green"))))
 '(company-tooltip-scrollbar-track ((t (:background "dim gray"))))
 '(company-tooltip-selection ((t (:background "saddle brown"))))
 '(completions-annotations ((t (:inherit italic :foreground "yellow green"))))
 '(cursor ((t (:background "#fc0"))))
 '(diff-file-header ((t (:extend t :background "grey56" :weight bold))))
 '(diff-header ((t (:extend t :background "LightSkyBlue4" :foreground "black"))))
 '(diff-refine-added ((t (:inherit diff-refine-changed :background "dark olive green" :weight bold))))
 '(ediff-even-diff-A ((t (:background "purple4"))))
 '(ediff-even-diff-B ((t (:background "DarkSeaGreen4"))))
 '(ediff-odd-diff-A ((t (:background "CadetBlue4"))))
 '(ediff-odd-diff-B ((t (:background "orange4"))))
 '(eldoc-highlight-function-argument ((t (:inherit font-lock-keyword-face))))
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
 '(font-lock-comment-face ((t (:foreground "IndianRed1" :slant italic))))
 '(font-lock-doc-face ((t (:foreground "salmon"))))
 '(font-lock-fic-author-face ((((class color)) (:foreground "yellow"))))
 '(font-lock-fic-face ((((class color)) (:background "magenta3" :foreground "yellow" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "gold2" :weight bold :height 1.0))))
 '(font-lock-keyword-face ((t (:foreground "SandyBrown" :slant oblique :height 1.0))))
 '(font-lock-number-face ((t (:foreground "OrangeRed1"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit bold :foreground "chartreuse"))))
 '(font-lock-string-face ((t (:foreground "LimeGreen" :weight bold))))
 '(font-lock-type-face ((t (:foreground "cyan2" :weight bold :height 1.0))))
 '(font-lock-variable-name-face ((t (:foreground "beige"))))
 '(god-mode-lighter ((t (:inherit error))))
 '(hi-blue-b ((t (:background "dark slate blue" :foreground "DeepSkyBlue1" :weight bold))))
 '(highlight ((t (:background "dark green"))))
 '(highlight-changes ((t (:foreground "red1" :underline t))))
 '(highlight-changes-delete ((t (:foreground "red1" :strike-through t))))
 '(highlight-indent-face ((t (:background "gray23"))))
 '(highlight-indent-guides-character-face ((t (:foreground "#4c4c4c"))))
 '(highlight-indent-guides-even-face ((t nil)))
 '(highlight-indent-guides-odd-face ((t (:background "gray8"))))
 '(highlight-indentation-current-column-face ((t (:background "gray20"))))
 '(highlight-indentation-face ((t (:background "gray22"))))
 '(highlight-symbol-face ((t (:background "black" :underline "SpringGreen1"))))
 '(hl-line ((t (:inherit highlight :background "gray10"))))
 '(hl-todo ((t (:background "magenta3" :foreground "yellow" :weight bold))))
 '(ido-first-match ((t (:foreground "salmon" :weight bold))))
 '(ido-only-match ((((class color)) (:foreground "SpringGreen"))))
 '(ido-subdir ((((min-colors 88) (class color)) (:foreground "orange"))))
 '(isearch-group-1 ((t (:background "palevioletred1" :foreground "black" :underline t))))
 '(isearch-group-2 ((t (:background "palevioletred3" :foreground "black" :underline t))))
 '(italic ((t (:slant italic))))
 '(js2-error ((t (:background "orange red" :foreground "yellow"))))
 '(js2-external-variable ((t (:foreground "violet"))))
 '(js2-function-param ((t (:foreground "SeaGreen2"))))
 '(js2-object-property ((t (:inherit font-lock-variable-name-face))))
 '(lazy-highlight ((t (:background "paleturquoise4" :foreground "black"))))
 '(line-number ((t (:inherit (shadow default) :background "#2a3232"))))
 '(line-number-current-line ((t (:inherit line-number :background "black" :foreground "chartreuse3" :weight bold))))
 '(line-number-major-tick ((t (:foreground "orange2" :weight bold :inherit 'line-number))))
 '(linum ((t (:inherit (shadow default) :background "gray20" :foreground "yellow4"))))
 '(lsp-details-face ((t (:height 0.85 :inherit shadow))))
 '(lsp-face-highlight-write ((t (:background "saddle brown" :weight bold))))
 '(lsp-face-rename ((t (:background "navy" :underline t))))
 '(magit-blame-heading ((t (:background "grey25" :foreground "deep sky blue"))))
 '(magit-diff-file-heading ((t (:foreground "turquoise2" :weight bold))))
 '(magit-hash ((t (:foreground "chartreuse3"))))
 '(magit-head ((t (:foreground "orange"))))
 '(magit-mode-line-process-error ((t (:inherit error :background "dark red" :foreground "yellow"))))
 '(magit-section-heading-selection ((t (:background "dark slate gray"))))
 '(magit-section-highlight ((t (:background "dark slate gray"))))
 '(magithub-ci-error ((t (:inherit error))))
 '(magithub-ci-failure ((t (:foreground "orchid1"))))
 '(magithub-notification-reason ((t (:inherit magit-header-line))))
 '(markdown-code-face ((t (:foreground "cyan2"))))
 '(markdown-markup-face ((t (:foreground "green3" :slant normal :weight normal))))
 '(match ((t (:background "RoyalBlue4"))))
 '(mode-line ((t (:background "DarkGray" :foreground "black" :box (:line-width (1 . -1) :style released-button)))))
 '(orderless-match-face-0 ((t (:foreground "chartreuse" :weight bold))))
 '(orderless-match-face-1 ((t (:foreground "navajo white" :weight bold))))
 '(orderless-match-face-2 ((t (:foreground "cyan" :weight bold))))
 '(orderless-match-face-3 ((t (:foreground "salmon1" :weight bold))))
 '(org-block ((t (:extend t :foreground "LightSteelBlue2"))))
 '(org-checkbox ((t (:inherit org-date :underline nil))))
 '(org-code ((t (:inherit default :foreground "aquamarine"))))
 '(org-ellipsis ((t nil)))
 '(org-level-1 ((t (:extend nil :foreground "PaleTurquoise1" :overline t :weight regular :height 1.5 :family "DejaVu Sans"))))
 '(org-level-2 ((t (:inherit outline-2 :overline t :height 1.1))))
 '(org-tag ((t (:box (:line-width 1 :color "grey50" :style released-button)))))
 '(org-todo ((t (:foreground "Pink" :inverse-video t :weight bold))))
 '(org-verbatim ((t (:foreground "gold"))))
 '(outline-1 ((t (:foreground "Cyan2"))))
 '(outline-2 ((t (:foreground "pale green"))))
 '(outline-3 ((t (:foreground "khaki"))))
 '(outline-4 ((t (:foreground "burlywood"))))
 '(package-status-dependency ((t (:inherit font-lock-function-name-face))))
 '(package-status-installed ((t (:inherit font-lock-string-face))))
 '(sh-heredoc ((t (:foreground "aquamarine2" :weight bold))))
 '(sh-quoted-exec ((t (:foreground "deep sky blue"))))
 '(shadow ((t (:foreground "gray56"))))
 '(show-paren-match ((t (:background "sienna4"))))
 '(smerge-lower ((t (:background "#224433"))))
 '(smerge-refined-added ((t (:inherit smerge-refined-change :background "dark green"))))
 '(smerge-refined-removed ((t (:inherit smerge-refined-change :background "red4"))))
 '(trailing-whitespace ((t (:background "dark goldenrod"))))
 '(tree-sitter-hl-face:number ((t (:inherit font-lock-number-face))))
 '(treemacs-git-ignored-face ((t (:foreground "dim gray"))))
 '(tty-menu-selected-face ((t (:background "yellow" :foreground "black"))))
 '(variable-pitch ((t (:family "IBM Plex Sans"))))
 '(vc-conflict-state ((t (:inherit vc-state-base :background "dark violet"))))
 '(vc-locally-added-state ((t (:inherit vc-state-base :background "dark green"))))
 '(vc-missing-state ((t (:inherit vc-state-base :background "saddle brown"))))
 '(vertico-current ((t (:inherit highlight :extend t :foreground "white smoke"))))
 '(web-mode-html-attr-name-face ((t (:foreground "light green"))))
 '(web-mode-html-tag-face ((t (:inherit font-lock-function-name-face))))
 '(web-mode-json-key-face ((t (:foreground "goldenrod2"))))
 '(web-mode-variable-name-face ((t (:inherit font-lock-constant-face :weight bold))))
 '(widget-field ((t (:extend t :background "gray30" :foreground "pale green" :box (:line-width (1 . -1) :color "gray30"))))))

;; Note: work around a bug that breaks cursor color setting via customize.
;; cursor color for all new frames;
;; plain set-cursor-color is ineffective.
(add-to-list 'default-frame-alist '(cursor-color . "#0f0"))

(message ".emacs done")
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'erase-buffer 'disabled nil)
