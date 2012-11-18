;; global key bindings

(global-set-key (kbd "C-z") 'undo)

; C-X PgUp / PgDn: windows
(global-set-key (kbd "C-X <up>") 'previous-multiframe-window)
(global-set-key (kbd "C-X <down>") 'next-multiframe-window)

(global-set-key (kbd "C-j") 'join-line)
(global-set-key (kbd "s-w") 'kill-this-buffer)
(global-set-key (kbd "C-X C-\\") 'kill-this-buffer)
