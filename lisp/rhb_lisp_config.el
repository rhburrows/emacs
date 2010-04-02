(provide 'rhb_lisp_config)

;; Define the lisp to use
(setq slime-lisp-implementations '((sbcl ("/usr/local/bin/sbcl"))))

(add-to-list 'load-path (concat emacs-dir "lisp/slime"))
(require 'slime)
(slime-setup)
