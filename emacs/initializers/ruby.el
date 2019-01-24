;;;;;;;;;;;;;;;;;;;;;;
;; Ruby Mode Config ;;
;;;;;;;;;;;;;;;;;;;;;;

;; Ruby Version Management (`rvm') ;;
(use-package rvm
   :init
   (rvm-use-default)
   :config
   (setq rvm-verbose nil)
   (add-hook 'ruby-mode-hook
             (lambda () (rvm-activate-corresponding-ruby)))
   :mode (("\\.rake$" . ruby-mode)
          ("\\.gemspec$" . ruby-mode)
          ("\\.ru$" . ruby-mode)
          ("Rakefile$" . ruby-mode)
          ("Gemfile$" . ruby-mode)
          ("Capfile$" . ruby-mode)
          ("Guardfile$" . ruby-mode)))

(use-package feature-mode)
