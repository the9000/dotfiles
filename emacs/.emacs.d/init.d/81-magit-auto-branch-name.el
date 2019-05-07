(defun my-extract-branch-tag (branch-name)
  (let ((TICKET-PATTERN "\\(?:[[:alpha:]]+-\\)?\\([[:alpha:]]+-[[:digit:]]+\\)-.*"))
    (when (string-match-p TICKET-PATTERN branch-name)
       (s-upcase (replace-regexp-in-string TICKET-PATTERN "[\\1] " branch-name)))))

(defun my-git-commit-insert-branch ()
  (insert (my-extract-branch-tag (magit-get-current-branch))))

(add-hook 'git-commit-setup-hook 'my-git-commit-insert-branch)
