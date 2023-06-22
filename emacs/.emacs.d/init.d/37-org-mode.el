;; Slight amendments to org mode.

(add-hook 'org-mode-hook 'my-org-mode-hook)

(defun my-org-mode-hook ()
  (my-enable-each-if-present '(flyspell-mode visual-line-mode))
  )
