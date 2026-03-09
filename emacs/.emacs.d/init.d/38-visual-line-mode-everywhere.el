;; Enable visual-line-mode everywhere words are involved.

(defun my/visual-line-mode-enable () (visual-line-mode 1))

(mapcar
 (lambda (hook-alist)
   (add-hook hook-alist #'my/visual-line-mode-enable))
 '(text-mode-hook prog-mode-hook markdown-mode-hook org-mode-hook)
 )
