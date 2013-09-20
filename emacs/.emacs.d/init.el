;; Initialization file to load other init files.
;; The init directory /init.d is loked-for under either user-specified
;; path or ~/.emacs.d. Any elisp files found there are loaded in
;; alpahbetical order, like in site-start.d. Unix-style init.d file
;; naming, like 01-foo.el, 05-bar.el is encouraged.

;; detect user initialization directory
(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))

;; Load each config 'module' found in init.d
(defun load-init-dir-files (dir)
  (mapc (lambda (fname)
   (if (file-readable-p fname)
         ;; Load a file in current user's configuration directory
         (load-file fname)
         (message "Could not load %s" fname)
    ))
    (directory-files dir  t ".*\\.el$")
  )
)
(load-init-dir-files (concat user-init-dir "/init.d"))
