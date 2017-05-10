;; Mode-specific key bindings.

;; Note: eval-after-load did not work.

(add-hook 'python-mode-hook
          (lambda ()
            (progn
              (define-key python-mode-map (kbd "C-c g") 'semantic-ia-fast-jump)
              (define-key python-mode-map (kbd "<M-mouse-3>") 'semantic-ia-fast-mouse-jump)
              )))
