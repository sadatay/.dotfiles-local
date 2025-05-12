;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-opera)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; keybindings
; (map! "C-p s s" #'counsel-ag)

;; turn on key-chord mode
(key-chord-mode +1)

;; set undo to cmd + z
(global-set-key (kbd "C-z") 'undo)

;; search using ivy with swiper
(global-set-key (kbd "C-s") 'swiper)

;; go to word
(key-chord-define-global "jj" 'avy-goto-word-1)

;; go to line
(key-chord-define-global "jl" 'avy-goto-line)

;; go back to previous buffer
(key-chord-define-global "JJ" 'crux-switch-to-previous-buffer)

;; undo
; (key-chord-define-global "uu" 'undo-tree-visualize)

;; browse kill ring
(key-chord-define-global "yy" 'browse-kill-ring)

;; shortcut for M-x is nice
(key-chord-define-global "xx" 'counsel-M-x)

;; multiple cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)

;; drag stuff with M-n and M-p
(global-set-key (kbd "M-n") 'drag-stuff-down)
(global-set-key (kbd "M-p") 'drag-stuff-up)

;; comment lines out with cmd + /
(global-set-key (kbd "s-/") 'comment-dwim-2)
(global-set-key (kbd "C-c /") 'comment-dwim-2)

;; expand current line into selection
(global-set-key (kbd "C-=") 'er/expand-region)

;; maximize the window with cmd + enter
(global-set-key (kbd "<s-return>") 'toggle-frame-maximized)

;; if there are two open buffers (split window) use cmd + w to switch between
(global-set-key (kbd "s-w") 'ace-window)

;; crux: https://github.com/bbatsov/crux
;;
;;Insert an empty line above the current line and indent it properly.
(global-set-key (kbd "<C-S-return>") 'crux-smart-open-line-above)

;; Insert an empty line and indent it properly (as in most IDEs).
(global-set-key [(shift return)] #'crux-smart-open-line)

;; Move point to first non-whitespace character on this line. If point is already
;; there, move to the beginning of the line.
(global-set-key [remap move-beginning-of-line] #'crux-move-beginning-of-line)

;; Fix indentation in buffer and strip whitespace.
(global-set-key (kbd "C-c n") 'crux-cleanup-buffer-or-region)

;; Delete current file and buffer.
(global-set-key (kbd "C-c D") 'crux-delete-file-and-buffer)

;; Duplicate the current line (or region).
(global-set-key (kbd "C-c d") 'crux-duplicate-current-line-or-region)

;; counsel projectile find file
(global-set-key (kbd "C-c p f") 'counsel-projectile-find-file)

;; Duplicate and comment the current line (or region).
(global-set-key (kbd "C-c M-d") 'crux-duplicate-and-comment-current-line-or-region)

;; Rename the current buffer and its visiting file if any.
(global-set-key (kbd "C-c r") 'crux-rename-buffer-and-file)

;; swap the content of the two windows. Left side goes to right. Right side goes
;; to left.
(global-set-key (kbd "C-c s") 'crux-swap-windows)

;; Kill whole line OR region
(defun frontmacs-kill-region-or-line ()
  "Kill the region if active. Else, kill the line."
  (interactive)
  (if (use-region-p)
      (call-interactively 'kill-region)
    (call-interactively 'crux-kill-whole-line)))

(global-set-key (kbd "C-w") 'frontmacs-kill-region-or-line)

;; Open current line or region in Github
(global-set-key (kbd "C-x v b") #'git-link)

;; Fire up the git time machine
;; https://github.com/pidu/git-timemachine
(global-set-key (kbd "C-x v t") 'git-timemachine)

;; Clone a github repository
(global-set-key (kbd "C-x v c") #'github-sclone)

;; Counsel provides some nice enhancements to core emacs functions.
;; See https://github.com/abo-abo/swiper#counsel for details

(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "C-h b") 'counsel-descbinds)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

;; Flip bindings for ivy-done and ivy-alt-done in counsel. This allows you to
;; hit RET to complete a directory instead of opening dired.
;(define-key counsel-find-file-map (kbd "C-j") 'ivy-done)
;(define-key counsel-find-file-map (kbd "RET") 'ivy-alt-done)


;; https://www.emacswiki.org/emacs/zoom-frm.el
;;
;; Zoom Frames allows you to change the font-size of the current frame up or down. These are
;; the suggested bindings from the `zoom-frm' package itself:
;;
;;    Emacs 23 and later:
;;
;; (require 'vendor-zoom-frm)
;; (define-key ctl-x-map [(control ?+)] 'zoom-in/out)
;; (define-key ctl-x-map [(control ?-)] 'zoom-in/out)
;; (define-key ctl-x-map [(control ?=)] 'zoom-in/out)
;; (define-key ctl-x-map [(control ?0)] 'zoom-in/out)


;; And then add bindings for the "super" key on OSX so that `⌘ +' will work on a mac.
(when (eq system-type 'darwin)
  (global-set-key (kbd "s-+") #'zoom-frm-in)
  (global-set-key (kbd "s--") #'zoom-frm-out)
  (global-set-key (kbd "s-0") #'zoom-frm-unzoom))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; UX / Navigation Config ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Browse Directory As Tree ;;
(use-package! dired-subtree
  :after dired
  :config
    (bind-key "<tab>" #'dired-subtree-toggle dired-mode-map)
    (bind-key "<backtab>" #'dired-subtree-cycle dired-mode-map))

;; Toggle Single/Double Quote at Point ;;
(use-package! toggle-quotes
  ;; `bind*` makes this keybinding consistent in all modes, overriding
  ;; any other functions bound to "C-'" by a given major mode.
  ;; For instance, `ruby-tools` would normally bind "C-'"
  ;; to 'ruby-tools-to-single-quote-string', but this will supercede that
  :bind* ("C-'" . toggle-quotes))


;; Attempt To Use `sudo' When User Has No Permissions ;;
(use-package! auto-sudoedit
  :config
  (setq auto-sudoedit-mode 1))

;; Glyphicons In Dired ;;
;; NOTE: Temporarily disabling icons. Hopefully disabling this
;; will speed things up and/or keep `emacs-plus' from crashing randomly
;; EDIT: psych lets do this shit

(use-package! all-the-icons-dired
  :after dired
  :config
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
  (add-hook 'dired-mode-hook '(lambda () (dired-hide-details-mode 1))))

(use-package! wgrep
  :config
  (setq wgrep-auto-save-buffer t))


;;;;;;;;;;;;;;;;;;;;;;;;;
;; UI / Display Config ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

;; Themes ;;

;; (use-package! gruvbox-theme
;;   :ensure t                             ; "feature-name" == package-name
;;   :config
;;   (load-theme 'gruvbox-dark-medium 'no-confirm))

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
(let ((font "Operator Mono Medium 11"))
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

(use-package! highlight-indent-guides
  :config
  (setq-default highlight-indent-guides-method 'character)
  ;; Indent character samples: | ┆ ┊
  (setq-default highlight-indent-guides-character ?\┆)
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode))

(use-package! whitespace
  :init
  (dolist (hook '(prog-mode-hook text-mode-hook))
    (add-hook hook 'whitespace-mode))
  (add-hook 'before-save-hook 'whitespace-cleanup)
  :config
  (setq whitespace-line-column 80) ;; limit line length
  (setq whitespace-style '(face tabs empty trailing lines-tail)))

;; TYPESCRIPT

(use-package prettier-js)
(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'web-mode-hook 'prettier-js-mode)

(use-package tide
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-format-before-save)))



;; (require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (fs/setup-tide-mode))))
;; enable typescript-tslint checker
;(flycheck-add-mode 'typescript-tslint 'web-mode)

(add-hook 'js2-mode-hook #'fs/setup-tide-mode)
;; configure javascript-tide checker to run after your default javascript checker
;; (flycheck-add-next-checker 'javascript-eslint 'javascript-tide 'append)

(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "jsx" (file-name-extension buffer-file-name))
              (fs/setup-tide-mode))))
;; configure jsx-tide checker to run after your default jsx checker
;; (flycheck-add-mode 'javascript-eslint 'web-mode)
;; (flycheck-add-next-checker 'javascript-eslint 'jsx-tide 'append)
(setq tide-format-options '
      (:insertSpaceAfterFunctionKeywordForAnonymousFunctions t :placeOpenBraceOnNewLineForFunctions nil :tabSize 2 :indentSize 2
                                                             ))

;;;; PROJECTILE
(setq projectile-cache-file (f-join "~/.config/doom/" "projectile.cache"))
(setq projectile-known-projects-file (f-join "~/.config/doom/" "projectile-bookmarks.eld"))

;; require projectile _after_ the configuration has been set so that it initializes
;; itself properly
(require 'projectile)

;;; select a keymap prefix for projectile
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; turn on projectile everywhere
(projectile-mode +1)

;; go to project dir when selecting project
(custom-set-variables
 '(projectile-switch-project-action (quote projectile-dired)))

; (setq +workspaces-switch-project-function nil)




;; frontmacs-completion.el
;; use Ivy mode for completion
(ivy-mode 1)
(setq projectile-completion-system 'ivy)
(counsel-projectile-mode)

;; Make the default completion mechanism a fuzzy search. However, you
;; don't really want to use fuzzy matching on lists that have content
;; with a lot of spaces (like documents), so disable for swiper.
;; Disable for counsel-ag since it's not narrowing results with fuzzy.
(setq ivy-re-builders-alist
      '((swiper . ivy--regex-plus)
        (counsel-ag . ivy--regex-plus)
        (counsel-find-file . ivy--regex-plus)
        (projectile-find-file . ivy--regex-plus)
        (counsel-projectile-find-file . ivy--regex-plus)
        (counsel-projectile-rg . ivy--regex-plus)
        (counsel-projectile-grep . ivy--regex-plus)
        (t . ivy--regex-fuzzy)))

;; setup company mode for autocomplete
(setq company-idle-delay 0.5)
(setq company-tooltip-limit 10)
(setq company-minimum-prefix-length 2)
;; invert the navigation direction if the the completion popup-isearch-match
;; is displayed on top (happens near the bottom of windows)
(setq company-tooltip-flip-when-above t)
(global-company-mode 1)
;; (require 'mac-key-mode)
;; (mac-key-mode 1)


;; frontmacs-modeline.el

;; Out of the box, Every single major and minor mode gets put onto the modeline
;; which clutters it up terribly. Using diminish we can hide or abbreviate modes
;; that don't contribute meaningfully to the high-level context.
;; see https://github.com/myrjola/diminish.el
;; (diminish 'ivy-mode)
;; (diminish 'company-mode)
;; (diminish 'smartparens-mode)
;; (diminish 'volatile-highlights-mode)
;; (diminish 'undo-tree-mode)
;; (diminish 'flycheck-mode)
;; (diminish 'drag-stuff-mode)
;; (diminish 'which-key-mode)
;; (diminish 'yas-minor-mode)
;; (diminish 'projectile-mode)
;; (diminish 'page-break-lines-mode)
;; (diminish 'editorconfig-mode)
;;
;;
;;


;; frontmacs-editing.el

;; Death to the tabs indeed!
;; https://github.com/bbatsov/prelude/blob/master/core/prelude-editor.el#L35-L44
(setq-default indent-tabs-mode nil)   ;; don't use tabs to indent
(setq-default tab-width 8)            ;; but maintain correct appearance


;; smart tab behavior - indent or complete
(setq tab-always-indent 'complete)

;; always end files with newlines
(setq require-final-newline t)

;; setup smartparens to auto open and close pairs
(require 'smartparens-config)
(smartparens-global-mode 1)

;; when you have a selection, typing text replaces it all.
(delete-selection-mode t)

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; show matching paren
(require 'paren)
(setq show-paren-style 'parenthesis)
(show-paren-mode +1)

;; highlight current line
(global-hl-line-mode +1)

;; visual feedback to some operations by highlighting portions
;; relating to the operations.
(require 'volatile-highlights)
(volatile-highlights-mode t)

;; make the left fringe 2 pixels so the hl-diff indicators aren't so fat
;; leave the right fringe width at the default 8 pixels
(fringe-mode '(2 . 8))

;; setup flycheck to show on the right side of the buffer
(require 'flycheck)
(setq flycheck-indication-mode 'right-fringe)

;; make the flycheck arrow look like an exclamation point.
;; but only do it when emacs runs in a window, not terminal
(when window-system
  (define-fringe-bitmap 'flycheck-fringe-bitmap-double-arrow
    [0 24 24 24 24 24 24 0 0 24 24 0 0 0 0 0 0]))

(add-hook 'prog-mode-hook 'flycheck-mode)

;; show whitespace
(require 'whitespace)
(whitespace-mode +1)

 ;; limit line length
(setq whitespace-line-column 80)
(setq whitespace-style '(face tabs empty trailing lines-tail))

;; remove trailing whitespace when saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; backup and autosave files go into the tmp directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode t)

;; disable annoying blink-matching-paren
(setq blink-matching-paren nil)

;; disable the blinking cursor
(blink-cursor-mode -1)

;; Drag stuff around.
(require 'drag-stuff)
(drag-stuff-global-mode)
(drag-stuff-define-keys)

;; displays the key bindings following your
;; currently entered incomplete command (a prefix) in a popup
(require 'which-key)
(which-key-mode +1)

;; Yet another snippet library, which is awesome. Allows you to expand
;; commonly used code templates into your buffer. Use it everywhere!
;; see https://joaotavora.github.io/yasnippet/
(require 'yasnippet)
(yas-global-mode +1)

;; Emacs creates lockfiles to recognize when someone else is already
;; editing the same file as you.
;;
;; Ember-CLI doesn't know what to do with these lock files. One second
;; they are there and the next the lock file disappears. This causes
;; issues with Ember-CLI's livereload feature where you will commonly
;; get an error like:
;;
;; Error: ENOENT, no such file or directory '.../components/.#file-name.hbs'
;;
;; To solve this issue we set "create-lockfiles" to nil and it will no
;; longer create these lock files.
(setq create-lockfiles nil)

;; enable y/n answers so you don't have to type 'yes' on 'no'
;; for everything
(fset 'yes-or-no-p 'y-or-n-p)

;; Autosave when switching buffers, windows, or frames.
;; Note: Emacs has different concepts of buffers, windows and frames
;; than you might be used to.
;;
;; https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffers-and-Windows.html
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Frames.html
(defadvice switch-to-buffer (before save-buffer-now activate)
  (when buffer-file-name (save-buffer)))
(defadvice other-window (before other-window-now activate)
  (when buffer-file-name (save-buffer)))
(defadvice windmove-up (before other-window-now activate)
  (when buffer-file-name (save-buffer)))
(defadvice windmove-down (before other-window-now activate)
  (when buffer-file-name (save-buffer)))
(defadvice windmove-left (before other-window-now activate)
  (when buffer-file-name (save-buffer)))
(defadvice windmove-right (before other-window-now activate)
  (when buffer-file-name (save-buffer)))

(add-hook 'focus-out-hook (lambda () (when buffer-file-name (save-buffer))))

;; This makes indenting region and untabifying region work on the entire
;; buffer if no region is selected
;; https://github.com/bbatsov/crux#using-the-bundled-advices
(require 'crux)
(crux-with-region-or-buffer indent-region)
(crux-with-region-or-buffer untabify)


;; frontmacs-system.el
;; forward function declarations eliminate warnings about whether a
;; function is defined.
; (declare-function exec-path-from-shell-initialize "exec-path-from-shell.el")

;; reduce the frequency of garbage collection by making it happen on
;; each 50MB of allocated data (the default is on every 0.76MB)
(setq gc-cons-threshold 50000000)

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

;; disable the toolbar at the top of the window
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; OSX specific code
(when (eq system-type 'darwin)

  ;; On OS X Emacs doesn't use the shell PATH if it's not started from
  ;; the shell. Let's fix that:
  ; (require 'exec-path-from-shell)
  ; (exec-path-from-shell-initialize)

  ;; It's all in the Meta
  (setq ns-function-modifier 'hyper)

  (menu-bar-mode +1)

  ;; Enable emoji, and stop the UI from freezing when trying to display them.
  (if (fboundp 'set-fontset-font)
      (set-fontset-font t 'unicode "Apple Color Emoji" nil 'prepend)))

; frontmacs-windowing.el

; (require 'hlinum)
(require 'linum)

;; Split horizontally when opening a new window from a command
;; whenever possible.
(setq split-height-threshold nil)

(defun frontside-windowing-adjust-split-width-threshold ()
  "Change the value of `split-width-threshold' so that it will cause the screen
split once and only once.

For example, if the frame is 360 columns wide, then we want the
split-width-threshold to be 181. That way, when you split horizontally, the two
new windows will each be 180 columns wide, and sit just below the threshold.
"
  (setq split-width-threshold (+ 1 (/ (frame-width) 2))))

;; recaculate split-width-threshold with every change
(add-hook 'window-configuration-change-hook
          'frontside-windowing-adjust-split-width-threshold)

;; vertical split, switch window, and open next buffer
(defun frontmacs/vsplit-last-buffer ()
  (interactive)
  (split-window-vertically)
  (other-window 1 nil)
  (switch-to-next-buffer))
(global-set-key (kbd "C-x 2") 'frontmacs/vsplit-last-buffer)

;; horizontal split, switch window, and open next buffer
(defun frontmacs/hsplit-last-buffer ()
  (interactive)
  (split-window-horizontally)
  (other-window 1 nil)
  (switch-to-next-buffer))
(global-set-key (kbd "C-x 3") 'frontmacs/hsplit-last-buffer)

;; Line numbers
;; highlight the current line number
(setq linum-format " %3d ")

;; turn on line numbers in prog-mode
(add-hook 'prog-mode-hook 'linum-mode)

;; disable window-system in terminal mode
(unless window-system
  (menu-bar-mode -1))

; disable startup screen
(setq inhibit-startup-screen t)

;; use super (cmd) + arrow keys to switch between visible buffers
(require 'windmove)
(windmove-default-keybindings 'super)

;; War and scrollbars. what are they good for?
(require 'scroll-bar)
(scroll-bar-mode -1)

;; ruby autocomplete
(eval-after-load 'auto-complete
  '(add-to-list 'ac-modes 'inf-ruby-mode))
(add-hook 'inf-ruby-mode-hook 'ac-inf-ruby-enable)
(eval-after-load 'inf-ruby '
  '(define-key inf-ruby-mode-map (kbd "TAB") 'auto-complete))
