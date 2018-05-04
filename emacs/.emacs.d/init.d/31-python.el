;; From http://cpbotha.net/thingies/python-outline.dot.emacs.txt
;; Makes code folding in Python mode work (allegedly).

(add-hook 'python-mode-hook 'my-python-hook)

(defun py-outline-level ()
  "This is so that `current-column` DTRT in otherwise-hidden text"
  ;; from ada-mode.el
  (let (buffer-invisibility-spec)
    (save-excursion
      (skip-chars-forward "\t ")
      (current-column))))

; this fragment originally came from the web somewhere, but the outline-regexp
; was horribly broken and is broken in all instances of this code floating
; around.  Finally fixed by Charl P. Botha <http://cpbotha.net/>
(defun my-python-hook ()
  (setq outline-regexp "[^ \t\n]\\|[ \t]*\\(def[ \t]+\\|class[ \t]+\\)")
  ; enable our level computation
  (setq outline-level 'py-outline-level)
  ; turn on outline mode
  (outline-minor-mode t)
  ; initially hide all but the headers: (hide-body)
  (show-paren-mode 1)
  ; always show trailing space
  (setq show-trailing-whitespace 1)
  ; show nice indentation.
  (if (fboundp 'highlight-indent-guides-mode) (highlight-indent-guides-mode))
  ; show fixme warnings if the mode is available
  (if (fboundp 'hl-todo-mode) (hl-todo-mode t))
  ; Limit line length.
  (if (fboundp 'column-enforce-n) (column-enforce-n 100))
  ; Highlight symbol under cursor.
  (if (fboundp 'highlight-symbol-mode) (highlight-symbol-mode))
  ; Run Semantic mode.
  (if (fboundp 'semantic-mode) (semantic-mode))
  ; Flycheck.
  (if (fboundp 'flycheck-mode) (flycheck-mode))
  ;; kill trailing whitespace on save
  (add-to-list 'write-file-functions 'delete-trailing-whitespace)
)
