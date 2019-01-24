;;;;;;;;;;;;;;;;;;;;;;;;;
;; UI / Display Config ;;
;;;;;;;;;;;;;;;;;;;;;;;;;


;; Test pug-mode

(use-package pug-mode)


;; Themes ;;

(use-package flatland-black-theme
  :ensure t                             ; "feature-name" == package-name
  :config
  (load-theme 'flatland-black 'no-confirm))

;; Window Properties ;;
(add-to-list 'default-frame-alist '(width . 160))
(add-to-list 'default-frame-alist '(height . 140))
(set-window-margins nil nil nil)

; Natively supported as of 26
(add-to-list 'default-frame-alist
             '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist
             '(ns-appearance . dark))

;; Font Settings ;;
(let ((font "Operator Mono Medium 14"))
  (set-frame-font font)
  (add-to-list 'default-frame-alist
               `(font . ,font)))

;; Use Cursive For Keywords, Builtins, Comments ;;
(when (find-font (font-spec :name "Operator Mono"))
  (set-face-attribute 'font-lock-builtin-face nil :family "Operator Mono Medium" :italic t)
  (set-face-attribute 'font-lock-comment-face nil :family "Operator Mono Medium" :italic t)
  (set-face-attribute 'font-lock-keyword-face nil :family "Operator Mono Medium" :italic t))

;; Unicode ;;
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;; Bar Cursor ;;
(setq-default cursor-type 'bar)

;; No Scroll Bar ;;
(scroll-bar-mode -1)

;; Misc ;;
'(fill-column 80)
'(create-lockfiles nil)

(use-package highlight-indent-guides
  :config
  (setq-default highlight-indent-guides-method 'character)
  ;; Indent character samples: | ┆ ┊
  (setq-default highlight-indent-guides-character ?\┆)
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode))

(use-package whitespace
  :init
  (dolist (hook '(prog-mode-hook text-mode-hook))
    (add-hook hook 'whitespace-mode))
  (add-hook 'before-save-hook 'whitespace-cleanup)
  :config
  (setq whitespace-line-column 80) ;; limit line length
  (setq whitespace-style '(face tabs empty trailing lines-tail)))



;; note: this is a bit loud
;; (use-package rainbow-delimiters
;;   :ensure t
;;   :init
;;   (progn
;;     (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)))
;;   :config
;;   (set-face-attribute 'rainbow-delimiters-depth-1-face nil
;;                       :foreground "#78c5d6")
;;   (set-face-attribute 'rainbow-delimiters-depth-2-face nil
;;                       :foreground "#bf62a6")
;;   (set-face-attribute 'rainbow-delimiters-depth-3-face nil
;;                       :foreground "#459ba8")
;;   (set-face-attribute 'rainbow-delimiters-depth-4-face nil
;;                       :foreground "#e868a2")
;;   (set-face-attribute 'rainbow-delimiters-depth-5-face nil
;;                       :foreground "#79c267")
;;   (set-face-attribute 'rainbow-delimiters-depth-6-face nil
;;                       :foreground "#f28c33")
;;   (set-face-attribute 'rainbow-delimiters-depth-7-face nil
;;                       :foreground "#c5d647")
;;   (set-face-attribute 'rainbow-delimiters-depth-8-face nil
;;                       :foreground "#f5d63d")
;;   (set-face-attribute 'rainbow-delimiters-depth-9-face nil
;;                       :foreground "#78c5d6")

;; Use native line numbers
;; (progn
(remove-hook 'prog-mode-hook 'linum-mode nil)
;; (hlinum-deactivate)

;; (setq-default display-line-numbers t)
