(provide 'rhb_ruby_config)

(add-to-list 'load-path "~/emacs/ruby/rhtml")

;(require 'rhtml-mode)
(require 'haml-mode)

;(add-to-list 'auto-mode-alist
;	     '("\\.rhtml$" . rhtml-mode))
(add-to-list 'auto-mode-alist
	     '("\\.haml$" . haml-mode))

(require 'feature-mode)

(require 'autotest)
(require 'rcov-overlay)