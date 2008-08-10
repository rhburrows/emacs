(provide 'rhb_mac_config)

(setq mac-command-modifier 'meta)
(setq x-select-enable-clipboard t)

(global-set-key "\C-cm" 'mac-toggle-max-window)

;; Support for growl
(add-to-list 'load-path "~/emacs/growl")
(require 'rhb_growl_config)