(custom-set-variables
  ;; Theme
  ; '(frontmacs-theme 'ujelly)

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

  ;; Max/Full Shortcuts
  '(global-set-key (kbd "<s-return>") 'toggle-frame-maximized)
  '(global-set-key (kbd "<s-S-return>") 'toggle-frame-fullscreen)
  (scroll-bar-mode -1)
)
