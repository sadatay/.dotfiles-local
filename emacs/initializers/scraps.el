;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Scraps/Snippets Sandbox  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; UNUSED ;;

;; (use-package moe-theme
;; 	:config
;; 	(moe-dark))

;; FiraCode Ligatures ;;
;; (when (find-font (font-spec :name "Fira Code"))
;;   (add-to-list 'default-frame-alist '(font . "Fira Code-8"))
;;   (set-face-attribute 'default t :font "Fira Code-8")

;;   (let ((alist '((33 . ".\\(?:\\(?:==\\|!!\\)\\|[!=]\\)")
;;                  (35 . ".\\(?:###\\|##\\|_(\\|[#(?[_{]\\)")
;;                  (36 . ".\\(?:>\\)")
;;                  (37 . ".\\(?:\\(?:%%\\)\\|%\\)")
;;                  (38 . ".\\(?:\\(?:&&\\)\\|&\\)")
;;                  (42 . ".\\(?:\\(?:\\*\\*/\\)\\|\\(?:\\*[*/]\\)\\|[*/>]\\)")
;;                  (43 . ".\\(?:\\(?:\\+\\+\\)\\|[+>]\\)")
;;                  (45 . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
;;                  (46 . ".\\(?:\\(?:\\.[.<]\\)\\|[.=-]\\)")
;;                  (47 . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
;;                  (48 . ".\\(?:x[a-zA-Z]\\)")
;;                  (58 . ".\\(?:::\\|[:=]\\)")
;;                  (59 . ".\\(?:;;\\|;\\)")
;;                  (60 . ".\\(?:\\(?:!--\\)\\|\\(?:~~\\|->\\|\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[*$+~/<=>|-]\\)")
;;                  (61 . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
;;                  (62 . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
;;                  (63 . ".\\(?:\\(\\?\\?\\)\\|[:=?]\\)")
;;                  (91 . ".\\(?:]\\)")
;;                  (92 . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
;;                  (94 . ".\\(?:=\\)")
;;                  (119 . ".\\(?:ww\\)")
;;                  (123 . ".\\(?:-\\)")
;;                  (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
;;                  (126 . ".\\(?:~>\\|~~\\|[>=@~-]\\)")
;;                  )
;;                ))
;;     (dolist (char-regexp alist)
;;       (set-char-table-range composition-function-table (car char-regexp)
;;                             `([,(cdr char-regexp) 0 font-shape-gstring]))))

;; Disable Firacode Ligatures In Helm ;;
;; (add-hook 'helm-major-mode-hook
  ;; (lambda ()
;; (setq auto-composition-mode nil)))

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


;; Config ;;
;;------------
;; Theme
;; '(load-theme 'alect-dark t)
;; '(frontmacs-theme 'gruvbox)
;;------------
;; Keybindings
;;'(global-set-key (kbd "<s-return>") 'toggle-frame-maximized)
;;'(global-set-key (kbd "<s-S-return>") 'toggle-frame-fullscreen)
;;'(global-set-key (kbd "C-'") 'toggle-quotes)
;;------------

;;------------
;; Projectile's file checks can become a burden for remote
;; filesystems and/or while using TRAMP
;; '(projectile-file-exists-remote-cache-expire nil)
;; '(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))
;;------------
;; '(add-to-list 'tramp-default-proxies-alist
;;             '("nas\\.localdomain\\.lan\\'" "\\`root\\'" "/ssh:%h:"))
;; '(add-to-list 'tramp-default-proxies-alist
;;               '("nas'\\" "\\`root\\'" "/ssh:%h:"))

;; Not sure what I was trying to do here...
;; (use-package dash-functional)
;; (use-package ov)
;; (use-package s)
;; (add-to-list 'load-path "~/.local/share/icons-in-terminal/")
;;(add-to-list 'load-path "~/.emacs.d/vendor/font-lock-plus/")
;;(add-to-list 'load-path "~/.emacs.d/vendor/sidebar.el/") ;
;;(require 'sidebar)
;;(global-set-key (kbd "C-x C-f") 'sidebar-open)
;;(global-set-key (kbd "C-x C-a") 'sidebar-buffers-open)
