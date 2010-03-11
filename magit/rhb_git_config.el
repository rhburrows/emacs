(provide 'rhb_git_config)

(require 'magit)

(global-set-key "\C-cg" 'magit-status)
(add-hook 'magit-mode-hook
	  '(lambda ()
	     (define-key magit-mode-map (kbd "C-c s") 'diff-goto-source)))