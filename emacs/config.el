(custom-set-variables
  ;; Theme
  '(load-theme 'alect-dark t)

  ;; Always download packages if absent
  '(use-package-always-ensure t)

  ;; Misc
  '(tab-width 2)
  '(ring-bell-function 'ignore)
  '(fill-column 80)
  '(create-lockfiles nil)

  ;; Flycheck Settings
  '(flycheck-disabled-checkers
    '(emacs-lisp-checkdoc))

  ;; Keybindings
  '(global-set-key (kbd "<s-return>") 'toggle-frame-maximized)
  '(global-set-key (kbd "<s-S-return>") 'toggle-frame-fullscreen)
  '(global-set-key (kbd "C-'") 'toggle-quotes)

  ;; Remember Open Buffers and Windows
  ;; '(desktop-save-mode 1)
)
