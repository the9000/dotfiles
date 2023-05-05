;; Utility things to use along with the rest of scripts.

(defmacro my-mk-mode-func (mode)
  `(lambda () (,mode 1))
  )

(defmacro my-enable-modes (target-mode extra-modes)
  `(progn ,@(mapcar (lambda (x-mode)
                      `(add-hook (intern ,(format "%s-hook" target-mode))
                                 (lambda () (,x-mode 1))))
                    extra-modes))
)

(defun my-enable-if-present (mode-name)
  (if (boundp mode-name)
      (progn
        (funcall mode-name)
        (message "Calling %s" mode-name)
        )))

(defun my-enable-each-if-present (mode-names)
  ;; Mostly for educational and code explicitness purposes.
  (mapcar 'my-enable-if-present mode-names)
)
