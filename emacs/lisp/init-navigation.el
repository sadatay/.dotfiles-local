;; NeoTree (File Navigator)
(use-package neotree
  :init
    (setq neo-theme (if (display-graphic-p) 'icons))
    (setq neo-modern-sidebar t)
    (setq neo-window-fixed-size nil)
    (setq neo-autorefresh nil)
    (setq neo-smart-open t)
  :config
    (global-set-key [f8] 'neotree-toggle))

;; Dumb Jump (Jump to Definition)
(use-package dumb-jump
  :config
    (dumb-jump-mode))

(provide 'init-navigation)
