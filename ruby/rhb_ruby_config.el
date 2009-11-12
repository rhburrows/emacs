(provide 'rhb_ruby_config)

(add-to-list 'load-path "~/emacs/ruby/rhtml")
(add-to-list 'load-path "~/emacs/ruby/ruby1.8-elisp")

(require 'ruby-mode)
(require 'ruby-electric)

;(require 'rhtml-mode)
(require 'haml-mode)

;(add-to-list 'auto-mode-alist
;	     '("\\.rhtml$" . rhtml-mode))
(add-to-list 'auto-mode-alist
	     '("\\.haml$" . haml-mode))

(add-hook 'rhtml-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode nil)
	    (setq auto-fill-mode nil)))

(require 'feature-mode)

;; Use unit-test UI
(setq autotest-use-ui 1)
(require 'autotest)

(require 'rcov-overlay)