(provide 'rhb_linux_config)

(require 'rhb_notify_config)

;; Linux font selection
(add-to-list 'default-frame-alist
	'(font . "-unknown-Inconsolata-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1"))

(if window-system
    (setq browse-url-browser-function 'browse-url-generic
	  browse-url-generic-program "google-chrome"))
