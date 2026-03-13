;; New, one-file init,
;; * All names resolve, all local.
;; * All stuff I introduce is prefixed by `my/'.
;; * Apply `use-package' throughout.
;; * Use meta-modes, like prog mode, for most stuff.

(use-package consult)  ;; Before Company.

;; ### Completion
;; Vertico for complation UI.
(use-package vertico
  ;;:custom
  ;; (vertico-scroll-margin 0) ;; Different scroll margin
  ;; (vertico-count 20) ;; Show more candidates
  ;; (vertico-resize t) ;; Grow and shrink the Vertico minibuffer
  ;; (vertico-cycle t) ;; Enable cycling for `vertico-next/previous'
  :init
  (vertico-mode)
  :config
  (if (package-installed-p 'consult)
      ;; From https://github.com/minad/vertico?tab=readme-ov-file#completion-at-point-and-completion-in-region
      (setq completion-in-region-function
            (lambda (&rest args)
              (apply (if vertico-mode
                         #'consult-completion-in-region
                       #'completion--in-region)
                     args)))
    )
)

;; Orderless for completon matching.
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides
   '(
     (file (styles basic partial-completion))
     ))
  )

;; Org Mode

(defun my/org-collapse-further-peers (downwards-p &optional only-done-p)
  "Collapses following org headings of the current level under the same parent."
  ;; TODO: allow to only collapse done items.
  (interactive)
  (save-excursion
    (let (
          (prev-header-line (org-current-line))
          (current-header-line -1) ;; Yet unset.
          )
      (while (/= current-header-line prev-header-line)
        (if (or (not only-done-p) (org-entry-is-done-p))
            (org-fold-hide-subtree))
        (if downwards-p (org-forward-heading-same-level 1)
          (org-backward-heading-same-level 1))
        (setq prev-header-line current-header-line)
        (setq current-header-line (org-current-line))
        )
      )
    )
  )

(defun my/org-collapse-peers-forward-all () (interactive) (my/org-collapse-further-peers t nil))
(defun my/org-collapse-peers-forward-done () (interactive) (my/org-collapse-further-peers t t))
(defun my/org-collapse-peers-backward-all () (interactive) (my/org-collapse-further-peers nil nil))
(defun my/org-collapse-peers-backward-done () (interactive) (my/org-collapse-further-peers nil t))

(use-package org-mode
  ;; NOTE: Loading org-tempo here does not work!
  :bind
  (:map org-mode-map
        ("\C-x x <up>" . my/org-collapse-peers-backward-all)
        ("\C-x x ." . 'my/org-collapse-peers-forward-done)
        ("\C-x x ," . 'my/org-collapse-peers-backward-done)
  )
)

;; Company for prod completion.
(use-package company
    :hook prog-mode  ;; Auto-enable in prog mode.
    :bind (:map prog-mode-map
           ("\C-;" . company-complete)
           )
)

;; Elisp.
(use-package elisp-slime-nav
    :hook lisp-mode
)

;; God mode

(use-package god-mode
  ;; NOTE: <print> is very conveniently placed on a Thinkpad keybaord.
  :bind ((  ;; Glogals
          ("<print>" . (lambda () (interactive) (god-local-mode 1)))
         (:map god-local-mode-map
               ("<print>" . god-local-mode)
               ("." . repeat))))
  :config
   ;; Bright red indicator.
  (custom-set-faces '(god-mode-lighter ((t (:inherit dired-broken-symlink)))))
)

;; ### Display.

;; ANSI escapes to fontify in compile commands.
(add-hook 'compilation-filter-hook 'ansi-color-compilation-filter)

;; Ligatures.
(use-package ligature
  :config
  ;; Enable the "www" ligature in every possible major mode
  (ligature-set-ligatures 't '("www"))
  ;; Enable traditional ligature support in eww-mode, if the
  ;; `variable-pitch' face supports it
  (ligature-set-ligatures 'eww-mode '("ff" "fi" "ffi"))
  ;; Enable all Cascadia Code ligatures in programming modes
  (ligature-set-ligatures
   '(prog-mode org-mode toml-mode yaml-mode)
   '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
     ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
     "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
     "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
     "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
     "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
     "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
     "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
     ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
     "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
     "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
     "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
     "\\\\" "://"))
  ;; Enables ligature checks globally in all buffers.  You can also do it
  ;; per mode with `ligature-mode'.
  (global-ligature-mode t))

(use-package auto-virtualenv
  :mode ("\\.py\\'" . python-mode)
  :config
  (setq auto-virtualenv-verbose t)
  (auto-virtualenv-setup))
