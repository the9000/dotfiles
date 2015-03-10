;; Do not wrap lines in SQL console mode.
(add-hook 'sql-interactive-mode-hook '(lambda () (toggle-truncate-lines 1)))

