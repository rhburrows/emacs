(provide 'rhb_yasnippet_config)

(require 'yasnippet)

(yas/initialize)
(yas/load-directory (concat emacs-dir "yasnippet/snippets"))