;; Indentation
(setq-default indent-tabs-mode nil)
(setq-default tab-always-indent 'complete)
(setq-default tab-width 2)

;; Wrap
(setq-default fill-column 80)

;; Whitespace & Newlines
(setq require-final-newline t)
(use-package ws-butler
  :diminish ws-butler-mode
  :config
    (add-hook 'prog-mode-hook 'ws-butler-mode)
    (add-hook 'jinja2-mode-hook 'ws-butler-mode)
    (add-hook 'rst-mode-hook 'ws-butler-mode)
    (add-hook 'yaml-mode-hook 'ws-butler-mode)
    (add-hook 'protobuf-mode-hook 'ws-butler-mode))

;; Parens
(use-package smartparens-config
  :ensure smartparens
  :diminish smartparens-mode
  :config
  (smartparens-global-mode 1))

;; Selection
(delete-selection-mode t)

;; File Save/Load
(setq create-lockfiles nil)

;; CRUX - Collection of Ridiculously Useful Extensions
(use-package crux)

;; Revision History
(use-package undo-tree
  :diminish undo-tree-mode
  :config
  (setq undo-tree-history-directory-alist `((".*" . ,temporary-file-directory)))
  (setq undo-tree-auto-save-history t)
  (global-undo-tree-mode))

;; Syntax / Linting
(use-package flycheck
  :init
    (setq-default flycheck-disabled-checkers
      '(emacs-lisp-checkdoc)))

(provide 'init-editing)
