;; Stuff useful in all programming language modes.

(add-hook 'prog-mode-hook 'my-prog-mode-hook)

(defun my-prog-mode-hook ()
  (my-enable-each-if-present
   '(highlight-indent-guides-mode
     hl-todo-mode
     highlight-symbol-mode
     show-paren-mode
     ;; NO projectile-mode
     semantic-mode
     yas-minor-mode  ;; Important for company-mode.
     ))
  ;; Dumb jump uniform everywhere.
  (if (fboundp 'dumb-jump-go-prompt)
      (local-set-key (kbd "C-x .") 'dumb-jump-go-prompt))
  ;; Potentially smart jump everywhere.
  (local-set-key (kbd "C-c C-.") 'xref-find-definitions)
  ;; Also useful even without an LSP.
  (local-set-key (kbd "M-.") 'smart-jump-go)
  (local-set-key (kbd "<M-mouse-3>") 'semantic-ia-fast-mouse-jump)
)
