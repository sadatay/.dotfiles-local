;; boot frontmacs

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load (expand-file-name "init-frontmacs.el" user-emacs-directory))

;; load path configuration
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; custom config
(require 'init-elpa)

;; load configs for specific features and modes
(require 'init-ui)
(require 'init-editing)
(require 'init-navigation)
(require 'init-modeline)
(require 'init-git)
(require 'init-window)
(require 'init-projects)

;; language specific configs
(require 'lang-javascript)

;; provide this module
(provide 'init)
