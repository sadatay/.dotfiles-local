;;; comment-dwim-2-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "comment-dwim-2" "../../../../.emacs.d/elpa/comment-dwim-2-1.2.2/comment-dwim-2.el"
;;;;;;  "f14f2aba94cf8663371ae0ef6ed7797e")
;;; Generated autoloads from ../../../../.emacs.d/elpa/comment-dwim-2-1.2.2/comment-dwim-2.el

(autoload 'comment-dwim-2 "comment-dwim-2" "\
Call a comment command according to the context.

If the region is active, call `comment-or-uncomment-region' to
toggle comments.
Else, the function applies to the current line and calls a
different function at each successive call. The behavior is:
* First  call : Toggle line commenting
* Second call : - Kill inline comment if one is present (1)
                - Insert inline comment otherwise
Given an argument, it reindents the inline comment instead (2).

Please note that the behavior of `comment-dwim-2' when
encountering an inline comment can be customized. Setting
`comment-dwim-2--inline-comment-behavior' to 'reindent-comment
will swap (1) and (2).

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/comment-dwim-2-1.2.2/comment-dwim-2-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/comment-dwim-2-1.2.2/comment-dwim-2.el")
;;;;;;  (22956 52726 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; comment-dwim-2-autoloads.el ends here
