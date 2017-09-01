;; Window Properties
(add-to-list 'default-frame-alist '(width . 120))
(add-to-list 'default-frame-alist '(height . 40))
(set-window-margins nil nil)
(fringe-mode `(2 . 8))

;; Max/Full Shortcuts
(global-set-key (kbd "<s-return>") 'toggle-frame-maximized)
(global-set-key (kbd "<s-S-return>") 'toggle-frame-fullscreen)

;; Prevent Splash
(setq inhibit-startup-screen t)

;; Scroll Behavior
(scroll-bar-mode -1)
(setq scroll-margin 0)
(setq scroll-conservatively 100000)
(setq scroll-preserve-screen-position 1)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)

;; Misc
(setq ring-bell-function 'ignore)

(provide 'init-window)