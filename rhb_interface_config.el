(provide 'rhb_interface_config)

;; Turn off the UI
(if (fboundp 'scroll-bar-mode)
    (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode)
    (menu-bar-mode -1))

;; Turn of the bell
(setq ring-bell-function 'ignore)

;; Turn off splash screen on startup
(setq inhibit-splash-screen t)

;; Turn on highlighting of selected region
(setq transient-mark-mode t)

;; Turn on highlighting of matching parens
(show-paren-mode t)

;; Show column number with line number
(setq column-number-mode t)

;; Turn off backups
(setq make-backup-files nil)

;; Set up Emacs to run bash as its primary shell.
(setq shell-file-name "bash")
(setq shell-command-switch "-c")
(setq explicit-shell-file-name shell-file-name)
(setenv "SHELL" shell-file-name)
(setq explicit-sh-args '("-login" "-i"))

;; Color scheme similar to vibrant ink from TextMate
(defun set-theme-to-vibrant-ink()
  "http://github.com/smtlaissezfaire/emacs-extensions/tree/master/vibrant-ink.el"
  (setq font-lock-maximum-decoration t)
  ;; Set colors
  (set-background-color "black")
  (set-foreground-color "white")
  (set-cursor-color "yellow")
  (set-face-foreground font-lock-type-face "white")
  (set-face-foreground font-lock-comment-face "magenta4")
  (set-face-foreground font-lock-keyword-face "orange red")
  (set-face-foreground font-lock-function-name-face "orange")
  (set-face-foreground font-lock-string-face "green"))

;; Default color scheme
;(set-theme-to-vibrant-ink)
; Use color-theme instead

(require 'color-theme)
(color-theme-initialize)
;(color-theme-midnight)
;(color-theme-charcoal-black)
(color-theme-clarity)

;; highlight the current line
;(defface hl-line '((t (:background "midnight blue")))
;  "Face to use for `hl-line-face'." :group 'hl-line)
;(setq hl-line-face 'hl-line)
;(global-hl-line-mode t)