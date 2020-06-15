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
