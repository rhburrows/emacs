(provide 'rhb_slime_config)

(setq inferior-lisp-program "/usr/local/bin/clisp")
(add-to-list 'load-path "~/src/slime/")
(require 'slime)
(slime-setup)