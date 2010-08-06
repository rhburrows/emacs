;;;
;;; Ryan Burrows' Emacs customization file
;;;
;;; email: rhburrows@gmail.com
;;;
(provide 'rhb_config)

;;
;; Start the server so we can use emacsclient to open files
;;
(server-start)

;;; Some of this below stuff might start belonging in separate files

;; Pull this out (from stuart halloway screencast)
(require 'ido)
;; Enable fuzzy matching
(setq ido-enable-flex-matching t)
(add-hook 'ido-setup-hook
	  (lambda ()
	    (define-key ido-completion-map [tab] 'ido-complete)))
(ido-mode t)

(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

;; text-mode setup
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Set the default spell check program
(setq-default ispell-program-name "/usr/bin/aspell")

;; Simple Ack mode
(require 'ack)

;;
;; Non-programming emacs modes
;;
(require 'rhb_org_config) ;; Configuration for Org-mode

;;
;; Libraries for supporting gnus
;; actual configuration/use is in .gnus
;;
(add-to-list 'load-path (concat emacs-dir "gnus"))

;; Spaces not tabs
(setq indent-tabs-mode nil)

;;
;; Lets us turn buffers into html with syntax highlighting
;;
(require 'htmlize)

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
(add-to-list 'load-path (concat emacs-dir "lisp")) ;; Configuration for list programming
(add-to-list 'load-path (concat emacs-dir "flymake")) ;; Flymake syntax checker
(add-to-list 'load-path (concat emacs-dir "xml")) ;; Configuration for XML-modes
(add-to-list 'load-path (concat emacs-dir "clojure")) ;; Configuration for clojure
(add-to-list 'load-path (concat emacs-dir "markdown")) ;; Configuration for markdown
(add-to-list 'load-path (concat emacs-dir "color-theme")) ;; Configuration for color themes
(add-to-list 'load-path (concat emacs-dir "haskell")) ;; Configuration for haskell
(add-to-list 'load-path (concat emacs-dir "js")) ;; Configuration for javascript
(add-to-list 'load-path (concat emacs-dir "haxe")) ;; Configuration for haxe
(add-to-list 'load-path (concat emacs-dir "jabber")) ;; Configuration for jabber
(add-to-list 'load-path (concat emacs-dir "ruby")) ;; Configuration for ruby programming
(add-to-list 'load-path (concat emacs-dir "magit")) ;; Configuration for git
(add-to-list 'load-path (concat emacs-dir "twitter")) ;; Configuration for twitter
(add-to-list 'load-path (concat emacs-dir "notify")) ;; Configuration for notifications
(add-to-list 'load-path (concat emacs-dir "yasnippet")) ;; Confiration for snippets

;(require 'rhb_erlang_config) ;; Loading Erlang mode
(require 'rhb_lisp_config) ;; Loading Lisp mode and Slime
(require 'rhb_flymake_config) ;; Loading Flymake
(require 'rhb_xml_config) ;; Loading XML (nXML) modes
(require 'rhb_clojure_config) ;; Loading Clojure modes
(require 'rhb_markdown_config) ;; Loading Markdown modes
(require 'rhb_haskell_config) ;; Loading Haskell modes
(require 'rhb_js_config) ;; Loading Javascript modes
(require 'rhb_haxe_config) ;; Loading Haxe modes
(require 'rhb_jabber_config) ;; Loading jabber mode
:(require 'rhb_ruby_config) ;; Loading ruby modes
(require 'rhb_git_config) ;; Loading git modeso
(require 'rhb_twitter_config) ;; Loading twittering-mode
(require 'rhb_yasnippet_config) ;; Loading yasnippet

;;
;; General Interface Changes
;;
(require 'rhb_keybindings)
(require 'rhb_interface_config)

;;
;; System specific changes
;;
(if (or (string= window-system "mac")
	(string= window-system "ns"))
    (require 'rhb_mac_config)
  (require 'rhb_linux_config))