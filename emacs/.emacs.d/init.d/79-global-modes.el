;; Global modes


(if (fboundp 'global-hl-todo-mode)
    (global-hl-todo-mode 1))


;; we want line numbers everywhere. Fallback as we may.
(if (fboundp 'global-display-line-numbers-mode)
    (global-display-line-numbers-mode)
  (if (fboundp 'global-nlinum-mode)
      (global-nlinum-mode t)
    (global-linum-mode t))
  )

; column numbes everywhere
(column-number-mode t)

(setq show-trailing-whitespace t) ;; highlight it everywhere

;; Toolbar
(tool-bar-mode 0)

;; Editing affordances
(electric-pair-mode t)
;; (outline-mode t)
(ido-mode t)

;; Always show matching pairs.
(show-paren-mode 1)

;; Keep track of recent files.
(recentf-mode +1)
