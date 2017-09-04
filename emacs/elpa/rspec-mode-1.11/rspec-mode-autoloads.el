;;; rspec-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "rspec-mode" "../../../../.emacs.d/elpa/rspec-mode-1.11/rspec-mode.el"
;;;;;;  "398b18e0bc8390c05ea749d268810897")
;;; Generated autoloads from ../../../../.emacs.d/elpa/rspec-mode-1.11/rspec-mode.el

(autoload 'rspec-mode "rspec-mode" "\
Minor mode for RSpec files

\(fn &optional ARG)" t nil)

(autoload 'rspec-verifiable-mode "rspec-mode" "\
Minor mode for Ruby files that have specs

\(fn &optional ARG)" t nil)

(autoload 'rspec-dired-mode "rspec-mode" "\
Minor mode for Dired buffers with spec files

\(fn &optional ARG)" t nil)

(autoload 'rspec-buffer-is-spec-p "rspec-mode" "\
Returns true if the current buffer is a spec

\(fn)" nil nil)

(autoload 'rspec-enable-appropriate-mode "rspec-mode" "\


\(fn)" nil nil)

(dolist (hook '(ruby-mode-hook enh-ruby-mode-hook)) (add-hook hook 'rspec-enable-appropriate-mode))

(add-hook 'rails-minor-mode-hook 'rspec-verifiable-mode)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/rspec-mode-1.11/rspec-mode-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/rspec-mode-1.11/rspec-mode-pkg.el"
;;;;;;  "../../../../.emacs.d/elpa/rspec-mode-1.11/rspec-mode.el")
;;;;;;  (22956 52720 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; rspec-mode-autoloads.el ends here
