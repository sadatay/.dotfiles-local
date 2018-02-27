;;;;;;;;;;;;;;;;;;;;;
;; Modeline Config ;;
;;;;;;;;;;;;;;;;;;;;;

;; Spaceline ;;
(use-package spaceline-config
  :ensure spaceline
  :config
  (setq powerline-default-separator 'wave)
  (setq spaceline-buffer-modified-p t)
  (setq spaceline-version-control-p t)
  (setq spaceline-major-mode-p t)
  (setq spaceline-line-column-p t)
  (setq spaceline-projectile-root-p t)
  (spaceline-spacemacs-theme))

;; Glyphicons In Modeline ;;
;; NOTE: Temporarily disabling icons. Hopefully disabling this
;; will speed things up and/or keep `emacs-plus' from crashing randomly

;; (use-package spaceline-all-the-icons
;;   :config
;;   (spaceline-all-the-icons-theme))
