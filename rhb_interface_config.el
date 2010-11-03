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

;; Turn on the clock
(display-time)

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
(setq color-theme-load-all-themes nil)
(require 'color-theme-tangotango)
(color-theme-tangotango)
;(color-theme-initialize)
;(color-theme-midnight)
;(color-theme-charcoal-black)
;(color-theme-clarity)
;; Zenburn requires color-theme
;(add-to-list 'load-path (concat emacs-dir "themes"))
;(require 'zenburn)
;(color-theme-zenburn)

;(load (concat emacs-dir "themes/color-theme-rlx"))
;(color-theme-rlx)

;; highlight the current line
;(defface hl-line '((t (:background "midnight blue")))
;  "Face to use for `hl-line-face'." :group 'hl-line)
;(setq hl-line-face 'hl-line)
;(global-hl-line-mode t)

(require 'framemove)
(windmove-default-keybindings)
(setq framemove-hook-into-windmove t)

(require 'ansi-color)
(defun colorize-compilation-buffer()
  (toggle-read-only)
  (ansi-color-apply-on-region (point-min) (point-max))
  (toggle-read-only))
(add-hook 'compliation-filter-hook 'colorize-compilation-buffer)

(put 'downcase-region 'disabled nil)

;; Make WoMan not open a new frame
(setq woman-use-own-frame nil)

;; Swap windows (stolen from Steve Yegge)
(defun swap-windows()
  "If you have 2 windows, it swaps them."
  (interactive)
  (cond ((not (= (count-windows) 2))
	 (message "You need exactly 2 windows to do this."))
	(t
	 (let*
	     ((w1 (first (window-list)))
	      (w2 (second (window-list)))
	      (b1 (window-buffer w1))
	      (b2 (window-buffer w2))
	      (s1 (window-start w1))
	      (s2 (window-start w2)))
	   (set-window-buffer w1 b2)
	   (set-window-buffer w2 b1)
	   (set-window-start w1 s2)
	   (set-window-start w2 s1)))))

(defun find-file-next-frame()
  "If there is a second frame, run find-file there"
  (interactive)
  (cond ((not multiple-frames)
	 (message "Only one frame is present."))
	(t
	 (let ((f (next-frame)))
	   (select-frame f)
	   (x-focus-frame f)
	   (ido-find-file)))))
