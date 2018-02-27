;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Scraps/Snippets Sandbox  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Tramp ;;
;;------------
;; (use-package counsel-tramp
;;   :after (tramp counsel)
;;   :config
;;   (setq tramp-default-method "sshx")
;;   (define-key global-map (kbd "C-c s") 'counsel-tramp))
;;------------
;; (set-default 'tramp-default-proxies-alist (quote ((".*" "\\`root\\'" "/sshx:%h:"))))
;; (require 'tramp)
;; (setq tramp-ssh-controlmaster-options
;;       "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
;; (defun sudo-edit-current-file ()
;;   (interactive)
;;   (let ((position (point)))
;;     (find-alternate-file
;;      (if (file-remote-p (buffer-file-name))
;;          (let ((vec (tramp-dissect-file-name (buffer-file-name))))
;;            (tramp-make-tramp-file-name
;;             "sudo"
;;             (tramp-file-name-user vec)
;;             (tramp-file-name-host vec)
;;             (tramp-file-name-localname vec)))
;;        (concat "/sudo:root@localhost:" (buffer-file-name))))
;;     (goto-char position)))
;; (set-default 'tramp-default-proxies-alist
;;              (quote ((".*" "\\`root\\'" "/ssh:%h:"))))

;; Ruby ;;
;;------------
;; (use-package rake)
