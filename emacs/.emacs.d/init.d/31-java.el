;; Java-specific settings


(add-hook 'java-mode-hook (
  lambda ()
  (setq c-basic-offset 2
        tab-width 2
        indent-tabs-mode nil
)))
(add-hook 'java-mode-hook 'hs-minor-mode)
