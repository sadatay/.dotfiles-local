;;; typescript-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "typescript-mode" "../../../../.emacs.d/elpa/typescript-mode-0.2/typescript-mode.el"
;;;;;;  "b0ad3056ed2379097404ed02caa92c70")
;;; Generated autoloads from ../../../../.emacs.d/elpa/typescript-mode-0.2/typescript-mode.el

(autoload 'typescript-mode "typescript-mode" "\
Major mode for editing typescript.

Key bindings:

\\{typescript-mode-map}

\(fn)" t nil)

(eval-after-load 'folding '(when (fboundp 'folding-add-to-marks-list) (folding-add-to-marks-list 'typescript-mode "// {{{" "// }}}")))

(add-to-list 'auto-mode-alist '("\\.ts$" . typescript-mode))

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/typescript-mode-0.2/typescript-mode-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/typescript-mode-0.2/typescript-mode.el")
;;;;;;  (22956 52680 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; typescript-mode-autoloads.el ends here
