(setq emacs-dir (file-name-directory load-file-name))
(add-to-list 'load-path emacs-dir)

;; Load my main config file
;; TODO remove this and use rhb_config as init.el?
(require 'rhb_config)