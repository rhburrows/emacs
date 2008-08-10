(provide 'rhb_interface_config)

;; Turn off the UI
(if (fboundp 'scroll-bar-mode)
    (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode)
    (menu-bar-mode -1))

(setq inhibit-splash-screen t)

(setq transient-mark-mode t)

(show-paren-mode t)

(setq column-number-mode t)

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

(set-theme-to-vibrant-ink)