;;;
;;; Ryan Burrows' Emacs customization file
;;;
;;; email: rhburrows@gmail.com
;;;
(provide 'rhb_config)

;; Load elpa packages before everything else
(add-to-list 'load-path (concat emacs-dir "elpa"))
(require 'rhb_package_config)

;;
;; Start the server so we can use emacsclient to open files
;;
(setq server-socket-file "/tmp/emacs1000/server")
(unless (file-exists-p server-socket-file)
  (server-start))

(require 'rhb_ido_config)

;; Smex is ido for M-x
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; Old M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

;; text-mode setup
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Enable highlighting
(global-hi-lock-mode 1)

;; Set the default spell check program
(setq-default ispell-program-name "/usr/bin/aspell")

;; Undo tree
(require 'undo-tree)
(global-undo-tree-mode)

;;
;; Non-programming emacs modes
;;
(require 'rhb_org_config) ;; Configuration for Org-mode

;; Spaces not tabs
(setq-default indent-tabs-mode nil)

;;
;; Lets us turn buffers into html with syntax highlighting
;;
(require 'htmlize)

(setenv "PATH" (concat (getenv "PATH") ":/Users/rhburrows/bin"))

;;
;; Terminal emulation
;;
(autoload 'multi-term "multi-term" nil t)
(autoload 'multi-term-next "multi-term" nil t)

(setq multi-term-program "/bin/bash")

(add-hook 'term-mode-hook
	  #'(lambda () (setq autopair-dont-activate t)))
(global-set-key (kbd "C-c t") 'multi-term-next)
(global-set-key (kbd "C-c T") 'multi-term)

;;
;; Programming language customizations
;;
(add-to-list 'load-path (concat emacs-dir "flymake")) ;; Flymake syntax checker
(add-to-list 'load-path (concat emacs-dir "xml")) ;; Configuration for XML-modes
(add-to-list 'load-path (concat emacs-dir "markdown")) ;; Configuration for markdown
(add-to-list 'load-path (concat emacs-dir "color-theme")) ;; Configuration for color themes
(add-to-list 'load-path (concat emacs-dir "haskell")) ;; Configuration for haskell
(add-to-list 'load-path (concat emacs-dir "js")) ;; Configuration for javascript
(add-to-list 'load-path (concat emacs-dir "jabber")) ;; Configuration for jabber
(add-to-list 'load-path (concat emacs-dir "ruby")) ;; Configuration for ruby programming
(add-to-list 'load-path (concat emacs-dir "magit")) ;; Configuration for git
(add-to-list 'load-path (concat emacs-dir "twitter")) ;; Configuration for twitter
(add-to-list 'load-path (concat emacs-dir "notify")) ;; Configuration for notifications
(add-to-list 'load-path (concat emacs-dir "yasnippet")) ;; Configration for snippets
(add-to-list 'load-path (concat emacs-dir "java")) ;; Configuration for java

(require 'rhb_flymake_config) ;; Loading Flymake
(require 'rhb_xml_config) ;; Loading XML (nXML) modes
(require 'rhb_markdown_config) ;; Loading Markdown modes
(require 'rhb_haskell_config) ;; Loading Haskell modes
(require 'rhb_js_config) ;; Loading Javascript modes
(require 'rhb_jabber_config) ;; Loading jabber mode
(require 'rhb_ruby_config) ;; Loading ruby modes
(require 'rhb_git_config) ;; Loading git modeso
(require 'rhb_twitter_config) ;; Loading twittering-mode
(require 'rhb_yasnippet_config) ;; Loading yasnippet
(require 'rhb_java_config) ;; Loading java

(require 'rhb_slime_config)

(require 'rhb_eshell) ;; Eshell customizations

(require 'rhb_gnus)

;;
;; General Interface Changes
;;
(require 'rhb_interface_config)
(require 'rhb_keybindings)

;;
;; System specific changes
;;
(if (or (string= window-system "mac")
	(string= window-system "ns"))
    (require 'rhb_mac_config)
  (require 'rhb_linux_config))

;; Erlang stuff must be loaded /after/ system specific
(add-to-list 'load-path (concat emacs-dir "erlang")) ;; Configuration for erlang
(require 'rhb_erlang_config) ;; Loading Erlang mode


;; Probably should put this somewhere else but don't feel like it
(add-to-list 'auto-mode-alist '("SConstruct$" . python-mode))
