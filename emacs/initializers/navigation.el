;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; UX / Navigation Config ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Browse Directory As Tree ;;
(use-package dired-subtree
  :after dired
  :config
    (bind-key "<tab>" #'dired-subtree-toggle dired-mode-map)
    (bind-key "<backtab>" #'dired-subtree-cycle dired-mode-map))

;; Toggle Single/Double Quote at Point ;;
(use-package toggle-quotes
  ;; `bind*` makes this keybinding consistent in all modes, overriding
  ;; any other functions bound to "C-'" by a given major mode.
  ;; For instance, `ruby-tools` would normally bind "C-'"
  ;; to 'ruby-tools-to-single-quote-string', but this will supercede that
  :bind* ("C-'" . toggle-quotes))


;; Attempt To Use `sudo' When User Has No Permissions ;;
(use-package auto-sudoedit
  :config
  (setq auto-sudoedit-mode 1))

;; Glyphicons In Dired ;;
;; NOTE: Temporarily disabling icons. Hopefully disabling this
;; will speed things up and/or keep `emacs-plus' from crashing randomly
;; EDIT: psych lets do this shit

(use-package all-the-icons-dired
  :after dired
  :config
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
  (add-hook 'dired-mode-hook '(lambda () (dired-hide-details-mode 1))))
