(provide 'rhb_ruby_config)

(add-to-list 'load-path "~/emacs/ruby/rhtml")
(add-to-list 'load-path "~/emacs/ruby/ruby1.8-elisp")

(setq ri-ruby-script (expand-file-name "~/emacs/ruby/ri-emacs.rb"))
(autoload 'ri "~/emacs/ruby/ri-ruby.el" nil t)

(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files")
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '(".autotest" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook
	  '(lambda ()
	     (inf-ruby-keys)))

(require 'haml-mode)
(add-to-list 'auto-mode-alist
	     '("\\.haml$" . haml-mode))

(require 'feature-mode)
;; Use unit-test UI
(setq autotest-use-ui 1)
(require 'autotest)

(require 'rcov-overlay)
