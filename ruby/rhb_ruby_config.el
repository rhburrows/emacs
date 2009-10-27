(provide 'rhb_ruby_config)

(add-to-list 'load-path "~/emacs/ruby/rhtml")

(require 'rhtml-mode)

(add-to-list 'auto-mode-alist
	     '("\\.rhtml$" . rhtml-mode))
(add-hook 'rhtml-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode nil)
	    (setq auto-fill-mode nil)))

(require 'autotest)
(require 'rcov-overlay)