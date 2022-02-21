;; Typescript-specific setup.

(if (fboundp 'typescript-mode)
    (progn
      (setq typescript-indent-level 2)
      (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
      (my-enable-modes typescript-mode (hs-minor-mode highlight-symbol-mode company-mode))

      )
  )

(if (fboundp 'tide-mode)
    (progn
      (my-enable-modes typescript-mode (tide-mode))
      (my-enable-modes tide-mode (tide-hl-identifier-mode
                                  hs-minor-mode
                                  eldoc-mode
                                  flycheck-mode
                                  highlight-symbol-mode
                                  company-mode))
      ;; Some handy keys.
      (add-hook
       'tide-mode-hook
       (lambda ()
         (progn
           (define-key typescript-mode-map (kbd "C-c d") #'tide-documentation-at-point)
           (define-key typescript-mode-map (kbd "C-c r") #'tide-references)
           (define-key typescript-mode-map (kbd "C-c n") #'tide-rename-symbol)
           )))
      ;; auto-mode-alist only assigns one mode. We want a second on top.
      (add-hook
       'find-file-hook
       (lambda ()
         (let ((fext (file-name-extension buffer-file-name)))
           (when (or (string= fext "tsx") (string= fext "ts"))
             (progn
               (interactive)
               (message "Setting up Tide in %s" buffer-file-name)
               (typescript-mode)
               (tide-mode +1)
               (tide-setup)
               (tide-hl-identifier-mode +1)
               (flycheck-mode +1)
               (eldoc-mode +1)
               (highlight-symbol-mode +1)
               )
             ))
         ))
      )
  )
