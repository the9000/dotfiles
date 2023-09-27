;; C mode config.

(add-hook 'c-mode-hook 'my-c-mode-hook)

(defun my-c-mode-hook ()
  ;; Enable LSP.
  (if (and (require 'ccls nil t) (fboundp 'lsp)) (lsp))
  )
