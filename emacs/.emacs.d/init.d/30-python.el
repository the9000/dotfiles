;; Python-related

; from https://github.com/gabrielelanaro/emacs-for-python/wiki
(load-file "~/.emacs.d/vendors/emacs-for-python/epy-init.el")

; from http://www.saltycrane.com/blog/2010/05/my-emacs-python-environment/

(require 'pymacs)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

(add-hook 'find-file-hook 'flymake-find-file-hook)
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
               'flymake-create-temp-inplace))
      (local-file (file-relative-name
            temp-file
            (file-name-directory buffer-file-name))))
      (list "pycheckers"  (list local-file))))
   (add-to-list 'flymake-allowed-file-name-masks
             '("\\.py\\'" flymake-pyflakes-init)))
; (load-library "flymake-cursor")
(global-set-key [f10] 'flymake-goto-prev-error)
(global-set-key [f11] 'flymake-goto-next-error)

;; TODO: invent a way to put this into colors.el
(set-face-background 'highlight-indent-face "gray28") ;; indent leaders
