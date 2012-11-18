;; initialization file to load other init files.
;; see http://stackoverflow.com/questions/2079095/

;; detect user initialization directory
(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))

;; Utility function to load files on by one.
(defun load-user-file (file)
  (interactive "f")
  (let ((fname (expand-file-name file user-init-dir)))
    (if (file-readable-p fname)
      ;; Load a file in current user's configuration directory
      (and (load-file fname) (message "Loaded %s" fname))
      (message "Could not load %s" fname)
    )
  )
)

;; Load each config 'module'. Easy to comment out entries.
(mapc 'load-user-file '(
  "keyboard.el"
  "keyboard-chrome.el"
  "colors.el"
  "python.el"
  "golang.el"
))

;; (load-user-file "keyboard.el")

;; (let ((bar (+ 1 20)))
;;   (if (> bar 10)
;;       (message "foo = %d" bar)
;;       (message "too little %d" bar)
;; ))
