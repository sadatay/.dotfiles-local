;; Git Gutter
(use-package diff-hl
  :config
  (setq diff-hl-draw-borders nil)
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
  (global-diff-hl-mode +1)
  (diff-hl-flydiff-mode))

(provide 'init-git)