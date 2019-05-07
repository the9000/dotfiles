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
              js2-global-externs (list "window" "module" "process" "require" "assert" "setTimeout"
                                       "clearTimeout" "setInterval" "clearInterval" "location" "__dirname" "console" "JSON"))


(my-turn-mode 'js2-mode (list 'hs-minor-mode 'highlight-symbol-mode))
(my-turn-mode 'json-mode (list 'hs-minor-mode 'highlight-symbol-mode))
