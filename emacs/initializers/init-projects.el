;; Perspective / PerspProjectile

;; Perspective requires Common-Lisp
(use-package cl)

;;(Projectile is already provided by Frontmacs)
(use-package perspective
  :config
    (persp-mode))
(use-package persp-projectile)
