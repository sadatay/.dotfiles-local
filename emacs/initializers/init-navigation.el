;; Dired
(defun dired-mode-settings ()
  (dired-hide-details-mode 1))
(add-hook 'dired-mode-hook 'dired-mode-settings)

(use-package all-the-icons-dired
  :after dired
  :config
    (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

(use-package dired-subtree
  :after dired
  :config
    (bind-key "<tab>" #'dired-subtree-toggle dired-mode-map)
    (bind-key "<backtab>" #'dired-subtree-cycle dired-mode-map))
