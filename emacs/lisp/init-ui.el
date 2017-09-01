;; Font Settings
(let ((font "Operator Mono Medium 10"))
  (set-frame-font font)
  (add-to-list 'default-frame-alist
               `(font . ,font)))

;; FiraCode Ligatures
(when (find-font (font-spec :name "Fira Code"))
  (add-to-list 'default-frame-alist '(font . "Fira Code-10"))
  (set-face-attribute 'default t :font "Fira Code-10")

  ;; "Fira Code" ligatures
  (let ((alist '((33 . ".\\(?:\\(?:==\\|!!\\)\\|[!=]\\)")
                 (35 . ".\\(?:###\\|##\\|_(\\|[#(?[_{]\\)")
                 (36 . ".\\(?:>\\)")
                 (37 . ".\\(?:\\(?:%%\\)\\|%\\)")
                 (38 . ".\\(?:\\(?:&&\\)\\|&\\)")
                 (42 . ".\\(?:\\(?:\\*\\*/\\)\\|\\(?:\\*[*/]\\)\\|[*/>]\\)")
                 (43 . ".\\(?:\\(?:\\+\\+\\)\\|[+>]\\)")
                 (45 . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
                 (46 . ".\\(?:\\(?:\\.[.<]\\)\\|[.=-]\\)")
                 (47 . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
                 (48 . ".\\(?:x[a-zA-Z]\\)")
                 (58 . ".\\(?:::\\|[:=]\\)")
                 (59 . ".\\(?:;;\\|;\\)")
                 (60 . ".\\(?:\\(?:!--\\)\\|\\(?:~~\\|->\\|\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[*$+~/<=>|-]\\)")
                 (61 . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
                 (62 . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
                 (63 . ".\\(?:\\(\\?\\?\\)\\|[:=?]\\)")
                 (91 . ".\\(?:]\\)")
                 (92 . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
                 (94 . ".\\(?:=\\)")
                 (119 . ".\\(?:ww\\)")
                 (123 . ".\\(?:-\\)")
                 (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
                 (126 . ".\\(?:~>\\|~~\\|[>=@~-]\\)")
                 )
               ))
    (dolist (char-regexp alist)
      (set-char-table-range composition-function-table (car char-regexp)
                            `([,(cdr char-regexp) 0 font-shape-gstring]))))

  ;; use "Operator Mono" for cursive keywords
  (when (find-font (font-spec :name "Operator Mono"))
    (set-face-attribute 'font-lock-builtin-face nil :family "Operator Mono" :italic t)
    (set-face-attribute 'font-lock-constant-face nil :family "Operator Mono" :italic t)
    (set-face-attribute 'font-lock-keyword-face nil :family "Operator Mono" :italic t)
    (set-face-attribute 'font-lock-type-face nil :family "Operator Mono" :italic t)
    (set-face-attribute 'font-lock-function-name-face nil :family "Operator Mono" :italic t)))

;; Unicode
(set-language-environment "UTF-8")

;; Indent Guide (Indentation Highlighting)
(use-package indent-guide
  :config
    (indent-guide-global-mode))

;; Icons
(use-package all-the-icons)
(use-package mode-icons)

;; Rainbow delims
(use-package rainbow-delimiters
  :config
    (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

;; Line Numbers
(global-linum-mode +1)
(use-package hlinum
  :config
    (hlinum-activate))

;; Command Suggestions
(use-package which-key
  :diminish which-key-mode
  :config
  (which-key-mode +1))

(provide 'init-ui)