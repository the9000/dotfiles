;; From http://cpbotha.net/thingies/python-outline.dot.emacs.txt
;; Makes code folding in Python mode work (allegedly).

;;; Code:
(require 'virtualenvwrapper)  ;; We just always want it.
(if (require 'smart-jump nil t) ;; It's great to have, but semantic-mode works OK in simple cases.
    (smart-jump-python-register)
)

(add-hook 'python-mode-hook 'my-python-hook)

(defun py-outline-level ()
  "This is so that `current-column` DTRT in otherwise-hidden text."
  ;; from ada-mode.el
  (let (buffer-invisibility-spec)
    (save-excursion
      (skip-chars-forward "\t ")
      (current-column))))

(defun my-setup-py-lsp-mode ()
  "Set up LSP-specific things for Python."
  (if (boundp 'lsp-ui-sideline-ignore-duplicate) (setq lsp-ui-sideline-ignore-duplicate t))
  (if (boundp 'lsp-mode)
      (lsp-deferred)  ;; Language server.
      (semantic-mode)  ;; Better than nothing without LSP, but does not play nice with it.
    )
)

; this fragment originally came from the web somewhere, but the outline-regexp
; was horribly broken and is broken in all instances of this code floating
; around.  Finally fixed by Charl P. Botha <http://cpbotha.net/>
(defun my-python-hook ()
  (setq outline-regexp "[^ \t\n]\\|[ \t]*\\(def[ \t]+\\|class[ \t]+\\)")
  ; enable our level computation
  (setq outline-level 'py-outline-level)
  ; turn on outline mode
  (outline-minor-mode t)
  ; initially hide all but the headers: (hide-body)
  (show-paren-mode 1)
  ; show nice indentation.
  ;; (if (fboundp 'highlight-indent-guides-mode) (highlight-indent-guides-mode))
  (my-enable-each-if-present
   '(highlight-indent-guides-mode  ;; Indentation markers on the left.
     hl-todo-mode ;; Hightlight TODO, etc.
     highlight-symbol-mode  ;; Non-semantic highlight of symbol-like strings.
     python-docstring-mode  ;; Highlight :param:-style syntax in docstrings.
     flycheck-mode  ;; Better than nothing if no LSP.
  ))
  ;; Limit line length.
  ;; TODO: use editroconfig.
  (if (fboundp 'column-enforce-n) (column-enforce-n 100))
  ; Always show trailing space
  (setq show-trailing-whitespace 1)
  ;; kill trailing whitespace on save
  (add-to-list 'write-file-functions 'delete-trailing-whitespace)
  (if (boundp 'projectile-mode)
      (progn
        (projectile-mode)
        (venv-projectile-auto-workon) ;; Autoloaded from virtualenvwrapper.
        ))
  ;;
  (if (fboundp 'dumb-jump-go-prompt)
      (local-set-key (kbd "C-x .") 'dumb-jump-go-prompt))
  (my-setup-py-lsp-mode)
)
