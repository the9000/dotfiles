;; Global modes


(if (fboundp 'global-hl-todo-mode)
    (global-hl-todo-mode 1))


; we want line numbers everywhere
(if (fboundp 'global-nlinum-mode)
    (global-nlinum-mode t)
    (global-linum-mode t))

; column numbes everywhere
(column-number-mode t)

(setq show-trailing-whitespace t) ;; highlight it everywhere

;; Toolbar
(tool-bar-mode 0)

;; Editing affordances
(electric-pair-mode t)
;; (outline-mode t)
(ido-mode t)

