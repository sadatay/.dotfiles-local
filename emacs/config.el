(custom-set-variables
 ;; '(frontmacs-theme 'purple-haze)

  ;; Always download packages if absent
  '(use-package-always-ensure t)

  ;; Bar Cursor
  '(cursor-type 'bar)

  ;; No Scroll Bar
  '(scroll-bar-mode -1)

  ;; Flycheck Settings
  '(flycheck-disabled-checkers
    '(emacs-lisp-checkdoc)
    '(ruby-rubocop))

  ;; Remember Open Buffers and Windows
  ;; '(desktop-save-mode 0)

  ;; Use `rvm' for Ruby tools
  '(rspec-use-rvm t)


  '(linum-mode-set-explicitly -1)
  '(display-line-numbers 1)

  ;; Misc
  '(tab-width 2)
  '(ring-bell-function 'ignore)
  '(dired-use-ls-dired nil)
  ;; '(whitespace)
)
