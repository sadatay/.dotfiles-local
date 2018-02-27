(custom-set-variables
  ;; Theme
  ;'(load-theme 'alect-dark t)
  ;'(frontmacs-theme 'gruvbox)
  '(frontmacs-theme 'zenburn)

  ;; Always download packages if absent
  '(use-package-always-ensure t)

  ;; Bar Cursor
  '(cursor-type 'bar)

  ;; No Scroll Bar
  '(scroll-bar-mode -1)

  ;; Misc
  ;;'(tab-width 2)
  '(ring-bell-function 'ignore)
  ;'(fill-column 80)
  ; '(create-lockfiles nil)

  ;; Flycheck Settings
  '(flycheck-disabled-checkers
    '(emacs-lisp-checkdoc)
    '(ruby-rubocop))

  ;; Keybindings
  ;;'(global-set-key (kbd "<s-return>") 'toggle-frame-maximized)
  ;;'(global-set-key (kbd "<s-S-return>") 'toggle-frame-fullscreen)
  ;;'(global-set-key (kbd "C-'") 'toggle-quotes)

  ;; Remember Open Buffers and Windows
  ;; '(desktop-save-mode 1)

  '(rspec-use-rvm t)

  ;; Projectile's file checks can become a burden for remote
  ;; filesystems and/or while using TRAMP
  ;; '(projectile-file-exists-remote-cache-expire nil)
  ;; '(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))

  '(dired-use-ls-dired nil)

  ;; '(add-to-list 'tramp-default-proxies-alist
  ;;             '("nas\\.localdomain\\.lan\\'" "\\`root\\'" "/ssh:%h:"))
  ;; '(add-to-list 'tramp-default-proxies-alist
  ;;               '("nas'\\" "\\`root\\'" "/ssh:%h:"))
)
