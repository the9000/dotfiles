;; global key bindings

(global-set-key (kbd "C-z") 'undo)

; terminal-like copy-paste
(global-set-key (kbd "C-S-c C-S-c") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-S-v") 'x-clipboard-yank)

; C-X Up / Dn: windows
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

; TODO: move to a separate file?
(delete-selection-mode 1)

; Outline mode keys rebound more nicely
(defun my-outline-mode-key-bindings ()
  "Usable whenever outline (minor) mode is invoked."
  (interactive)
  (local-set-key (kbd "C-c <up>") 'hide-entry)
  (local-set-key (kbd "C-c <down>") 'show-entry)
  (local-set-key (kbd "C-S-c <up>") 'hide-body)
  (local-set-key (kbd "C-S-c <down>") 'show-all)
)

(add-hook 'outline-mode-hook 'my-outline-mode-key-bindings)
(add-hook 'outline-minor-mode-hook 'my-outline-mode-key-bindings)
