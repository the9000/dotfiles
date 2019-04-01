;; Use js2 for javascript mode.
(if (fboundp 'js2-mode)
    (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))

;; Set defaults; import Node's / Browser's globals as external keywords.
;; From https://github.com/CSRaghunandan/.emacs.d/blob/master/setup-files/setup-js.el
(setq js-basic-indent 2)
(setq-default js2-basic-indent 2
              js2-basic-offset 2
              js2-auto-indent-p t
              js2-cleanup-whitespace t
              js2-enter-indents-newline t
              js2-indent-on-enter-key t
              js2-global-externs (list "window" "module" "require" "assert" "setTimeout"
                                       "clearTimeout" "setInterval" "clearInterval" "location" "__dirname" "console" "JSON"))


;; HS minor mode for given major modes.
(defun my-enable-hs-minor-mode-hook ()
  (hs-minor-mode 1))

(add-hook 'js2-mode-hook 'my-enable-hs-minor-mode-hook)
(add-hook 'json-mode-hook 'my-enable-hs-minor-mode-hook)
