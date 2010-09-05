(provide 'rhb_ruby_config)

(add-to-list 'load-path (concat emacs-dir "ruby/rhtml"))
(add-to-list 'load-path (concat emacs-dir "ruby/ruby1.8-elisp"))

(setq ri-ruby-script (concat emacs-dir "ruby/ri-emacs.rb"))
(autoload 'ri (concat emacs-dir "ruby/ri-ruby.el") nil t)

(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files")
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '(".autotest" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))

(add-to-list 'auto-mode-alist '("\\.rhtml$" . html-mode))

;; TODO: Make conditional use only if using rvm myself
(if (executable-find "rvm")
    (progn
      (require 'rvm)
      (rvm-use-default)))

(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")

(require 'linum)
(require 'ruby-complexity)
(add-hook 'ruby-mode-hook
	  (function (lambda()
		      (flymake-mode)
		      (linum-mode)
		      (ruby-complexity-mode))))

(require 'rspec-mode)
(require 'rubydb)
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; Set up formatting
;; Move this to other modes if necessary
(setq whitespace-style '(trailing line space-before-tab
				  indentation space-after-tab
				  lines-tail)
      whitespace-line-column 80)

(add-hook 'ruby-mode-hook
	  '(lambda ()
	     (inf-ruby-keys)
	     (whitespace-mode 1)
	     (define-key ruby-mode-map "\C-c#" 'comment-or-uncomment-region)
	     (define-key ruby-mode-map (kbd "C-c i") 'ri)))

(require 'haml-mode)
(add-to-list 'auto-mode-alist
	     '("\\.haml$" . haml-mode))
(require 'sass-mode)
(add-to-list 'auto-mode-alist
	     '("\\.sass$" . sass-mode))

(require 'feature-mode)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
