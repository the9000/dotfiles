;; global key bindings

;; The panic button.
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

(defun my-join-line-below () (interactive)(save-excursion (next-line) (join-line)))

(global-set-key (kbd "C-S-j") 'my-join-line-below)
(global-set-key (kbd "C-c j") 'join-line)


; buffer lifecycle.
(global-set-key (kbd "C-x <f5>") 'revert-buffer)

(defun my-kill-this-buffer ()  ;; Stock kill-this-buffer can refuse to work.
    "Kill current buffer."
    (interactive)
    (kill-buffer (current-buffer)))
(global-set-key (kbd "C-x C-\\") 'my-kill-this-buffer)

(defun my-show-current-file-name ()
    "Show current file name as a message"
    (interactive)
    (message buffer-file-name))
(global-set-key (kbd "C-x x x") 'my-show-current-file-name)

(defun my-copy-current-file-name ()
    "Show current file name as a message"
    (interactive)
    (kill-new buffer-file-name))
(global-set-key (kbd "C-x x c") 'my-copy-current-file-name)


; M-click and C-c . try to open file at point.
(global-set-key (kbd "<M-down-mouse-1>") 'ffap-at-mouse)
(global-set-key (kbd "C-c .") 'ffap)

; home / end on OSX
(global-set-key (kbd "<home>") 'move-beginning-of-line)
(global-set-key (kbd "<end>") 'move-end-of-line)

;; Unbind the treacherous super-w that closes a frame without asking.
(global-unset-key (kbd "s-w"))

;; Package-specifc niceties.
;; // TODO: move to a separate file, like minor-modes.el.
;; Make major mode setup files consult or inform it.

(delete-selection-mode 1)
(if (boundp 'back-button) (back-button-mode t))

(desktop-save-mode t)

(if (boundp 'hl-todo-mode) (hl-todo-mode t))
(if (boundp 'recent-mode) (recent-mode t))

(if (fboundp 'find-file-in-repository)
    (global-set-key (kbd "M-g r") 'find-file-in-repository))
(if (fboundp 'fzf-git)
    (global-set-key (kbd "M-g M-r") 'fzf-git))

(if (fboundp 'string-inflection-all-cycle)
    (global-set-key (kbd "C-c -") 'string-inflection-all-cycle))

(if (fboundp 'magit-status)
    (progn
      (global-set-key (kbd "C-x g") 'magit-status)
      (global-set-key (kbd "C-x C-g") 'magit-blame-addition)
      ))

;; From https://emacs.stackexchange.com/a/29961/9370.
(defun my-flip-window ()
  (interactive)
  (let ((win  (get-mru-window 'visible t t)))
    (if win (progn
              (select-frame-set-input-focus (window-frame win))
              (select-window win))
      (mode-line-other-buffer))))

(global-set-key (kbd "C-<tab>") 'my-flip-window)

(if (fboundp 'ace-window)
    (progn
      (global-set-key (kbd "C-x w") 'ace-window) ;; Works in term; not Cx Cw.
      (global-set-key (kbd "C-S-o") 'ace-window) ;; Fewer presses.
    )
  )

(if (fboundp 'treemacs) (global-set-key (kbd "C-c t") 'treemacs))

;; \\

; Outline mode keys rebound more nicely
(defun my-outline-mode-key-bindings ()
  "Usable whenever outline (minor) mode is invoked."
  (interactive)
  (local-set-key (kbd "C-c <up>") 'hide-subtree)
  (local-set-key (kbd "C-c <down>") 'show-subtree)
  (local-set-key (kbd "C-c <left>") 'hide-body)
  (local-set-key (kbd "C-c <right>") 'show-all)
  (local-set-key (kbd "C-c <C-up>") 'outline-up-heading)
)

(add-hook 'outline-mode-hook 'my-outline-mode-key-bindings)
(add-hook 'outline-minor-mode-hook 'my-outline-mode-key-bindings)

;; Hide-show mode key bindings.

(defun my-hs-minor-mode-key-bindings ()
  "Usable whenever outline (minor) mode is invoked."
  (interactive)
  (local-set-key (kbd "C-c <up>") 'hs-hide-block)
  (local-set-key (kbd "C-c <down>") 'hs-show-block)
  (local-set-key (kbd "C-c <left>") 'hs-hide-level)
  (local-set-key (kbd "C-c <right>") 'hs-show-all)
)

(add-hook 'hs-minor-mode-hook 'my-hs-minor-mode-key-bindings)


; Delete / yank overwrites regions
(delete-selection-mode 1)


; Always ask before exiting.
(setq confirm-kill-emacs 'y-or-n-p)
