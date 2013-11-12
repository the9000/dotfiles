(setq auto-mode-alist
      (append
       '(;; File name ends in ‘.md’.
         ("\\.md\\'" . markdown-mode))
       auto-mode-alist))