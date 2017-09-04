;;; github-clone-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "github-clone" "../../../../.emacs.d/elpa/github-clone-0.2/github-clone.el"
;;;;;;  "8ae2c61eb7a5c34654197e98ea7aec44")
;;; Generated autoloads from ../../../../.emacs.d/elpa/github-clone-0.2/github-clone.el

(autoload 'github-clone "github-clone" "\
Fork and clone USER-REPO-URL into DIRECTORY.

USER-REPO-URL can be any of the forms:

  repository
  user/repository
  organization/repository
  https://github.com/user/repository
  git@github.com:user/repository.git
  https://github.com/user/repository.el.git

It will immediately clone the repository (as the origin) to
DIRECTORY. Then it prompts to fork the repository and add a
remote named after the github username to the fork.

\(fn USER-REPO-URL DIRECTORY)" t nil)

(autoload 'eshell/github-clone "github-clone" "\
Eshell alias uses current directory as default.

\(fn USER-REPO-URL &optional DIRECTORY)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/github-clone-0.2/github-clone-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/github-clone-0.2/github-clone.el")
;;;;;;  (22956 52753 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; github-clone-autoloads.el ends here
