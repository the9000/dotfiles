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
)
