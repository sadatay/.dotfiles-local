;;; browse-kill-ring-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "browse-kill-ring" "../../../../.emacs.d/elpa/browse-kill-ring-2.0.0/browse-kill-ring.el"
;;;;;;  "c8e47c620d7774e51f9273577b06d95e")
;;; Generated autoloads from ../../../../.emacs.d/elpa/browse-kill-ring-2.0.0/browse-kill-ring.el

(autoload 'browse-kill-ring-default-keybindings "browse-kill-ring" "\
Set up M-y (`yank-pop') so that it can invoke `browse-kill-ring'.
Normally, if M-y was not preceeded by C-y, then it has no useful
behavior.  This function sets things up so that M-y will invoke
`browse-kill-ring'.

\(fn)" t nil)

(autoload 'browse-kill-ring "browse-kill-ring" "\
Display items in the `kill-ring' in another buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/browse-kill-ring-2.0.0/browse-kill-ring-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/browse-kill-ring-2.0.0/browse-kill-ring.el")
;;;;;;  (22956 52732 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; browse-kill-ring-autoloads.el ends here
