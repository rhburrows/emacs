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

;; text-mode setup
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Set the default spell check program
(setq-default ispell-program-name "/opt/local/bin/aspell")

;;
;; System specific changes
;;
(if (or (string= window-system "mac")
	(string= window-system "ns"))
    (require 'rhb_mac_config))

;;
;; Non-programming emacs modes
;;
(require 'rhb_org_config) ;; Configuration for Org-mode

;;
;; Support for the w3m webbrowser
;;
; My current version of w3m doesn't work with emacs 23 so I'll use
; mac's default until I get around to fixing it.
;(add-to-list 'load-path "~/emacs/emacs-w3m")
;(require 'rhb_w3m_config)
(setq
 browse-url-browser-function 'rhb/mac-open)

(defun rhb/mac-open (url &rest ignore)
  "Browse URL using open."
  (interactive "sURL: ")
  (shell-command (concat "open " url)))

;;
;; Libraries for supporting gnus
;; actual configuration/use is in .gnus
;;
(add-to-list 'load-path "~/emacs/gnus")

;; Spaces not tabs
(setq indent-tabs-mode nil)

;;
;; Lets us turn buffers into html with syntax highlighting
;;
(require 'htmlize)

;;
;; Programming language customizations
;;
;(add-to-list 'load-path "~/emacs/erlang") ;; Configuration for Erlang mode
(add-to-list 'load-path "~/emacs/lisp") ;; Configuration for list programming
(add-to-list 'load-path "~/emacs/flymake") ;; Flymake syntax checker
(add-to-list 'load-path "~/emacs/xml") ;; Configuration for XML-modes
(add-to-list 'load-path "~/emacs/clojure") ;; Configuration for clojure
(add-to-list 'load-path "~/emacs/markdown") ;; Configuration for markdown
(add-to-list 'load-path "~/emacs/color-theme") ;; Configuration for color themes
(add-to-list 'load-path "~/emacs/haskell") ;; Configuration for haskell
(add-to-list 'load-path "~/emacs/js") ;; Configuration for javascript
(add-to-list 'load-path "~/emacs/haxe") ;; Configuration for haxe
(add-to-list 'load-path "~/emacs/jabber") ;; Configuration for jabber
(add-to-list 'load-path "~/emacs/ruby") ;; Configuration for ruby programming
(add-to-list 'load-path "~/emacs/magit") ;; Configuration for git
(add-to-list 'load-path "~/emacs/twitter") ;; Configuration for twitter

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
(require 'rhb_ruby_config) ;; Loading ruby modes
(require 'rhb_git_config) ;; Loading git modeso
(require 'rhb_twitter_config) ;; Loading twittering-mode

;;
;; General Interface Changes
;;
(require 'rhb_keybindings)
(require 'rhb_interface_config)


