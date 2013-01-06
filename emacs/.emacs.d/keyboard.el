;; global key bindings

(global-set-key (kbd "C-z") 'undo)

; terminal-lice copy-paste
(global-set-key (kbd "C-S-c C-S-c") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-S-v") 'x-clipboard-yank)

; C-X PgUp / PgDn: windows
(global-set-key (kbd "C-X <up>") 'previous-multiframe-window)
(global-set-key (kbd "C-X <down>") 'next-multiframe-window)

(global-set-key (kbd "C-j") 'join-line)
(global-set-key (kbd "s-w") 'kill-this-buffer)
(global-set-key (kbd "C-X C-\\") 'kill-this-buffer)
