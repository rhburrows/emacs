(provide 'rhb_lisp_config)

;; Define the lisp to use
(setq inferior-lisp-program "/usr/local/bin/sbcl")

(add-to-list 'load-path "~/emacs/lisp/slime")
(require 'slime)
(slime-setup)
