;; global key bindings

(global-set-key (kbd "C-z") 'undo)

; terminal-lice copy-paste
(global-set-key (kbd "C-S-c C-S-c") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-S-v") 'x-clipboard-yank)

; C-X PgUp / PgDn: windows
(global-set-key (kbd "C-X <up>") 'previous-multiframe-window)
(global-set-key (kbd "C-X <down>") 'next-multiframe-window)

(global-set-key (kbd "C-X C-<up>") 'previous-multiframe-window)
(global-set-key (kbd "C-X C-<down>") 'next-multiframe-window)

; C-PgUp / PgDn: windows, a la terminals, browsers, etc
(global-set-key (kbd "<C-prior>") 'previous-multiframe-window)
(global-set-key (kbd "<C-next>") 'next-multiframe-window)

(global-set-key (kbd "C-j") 'join-line)
(global-set-key (kbd "C-c j") 'join-line)

(global-set-key (kbd "s-w") 'kill-this-buffer)
(global-set-key (kbd "C-X C-\\") 'kill-this-buffer)
(global-set-key (kbd "s-<f5>") 'revert-buffer)

; M-click opens file at mouse
(global-set-key (kbd "<M-down-mouse-1>") 'ffap-at-mouse)

;; Package-specifc niceties.
;; // TODO: move to a separate file, like minor-modes.el.
;; Make major mode setup files consult or inform it.

(delete-selection-mode 1)
(if (boundp 'back-button) (back-button-mode t))

(desktop-save-mode t)

(if (boundp 'fixmee-mode) (fixmee-mode t))
(if (boundp 'recent-mode) (recent-mode t))

(if (fboundp 'find-file-in-repository)
    (global-set-key (kbd "M-g r") 'find-file-in-repository))

(if (fboundp 'string-inflection-all-cycle)
    (global-set-key (kbd "C-c -") 'string-inflection-all-cycle))

(if (fboundp 'magit-status)
    (global-set-key (kbd "C-x g") 'magit-status))

(if (fboundp 'ace-window)
    (global-set-key (kbd "C-x w") 'ace-window))

;; \\

; Outline mode keys rebound more nicely
(defun my-outline-mode-key-bindings ()
  "Usable whenever outline (minor) mode is invoked."
  (interactive)
  (local-set-key (kbd "C-c <up>") 'hide-subtree)
  (local-set-key (kbd "C-c <down>") 'show-subtree)
  (local-set-key (kbd "C-S-c <up>") 'hide-body)
  (local-set-key (kbd "C-S-c <down>") 'show-all)
)

(add-hook 'outline-mode-hook 'my-outline-mode-key-bindings)
(add-hook 'outline-minor-mode-hook 'my-outline-mode-key-bindings)

; Delete / yank overwrites regions
(delete-selection-mode 1)


; Always ask before exiting.
(setq confirm-kill-emacs 'y-or-n-p)
