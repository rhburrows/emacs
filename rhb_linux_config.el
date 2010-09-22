(provide 'rhb_linux_config)

(require 'rhb_notify_config)

;; Linux font selection
(add-to-list 'default-frame-alist
	'(font . "Inconsolata-11"))

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "conkeror")

(if (and (daemonp) (locate-library "edit-server"))
    (progn
      (require 'edit-server)
      (edit-server-start)))

;; Set up the erlang paths so the mode can be loaded
(setq rhb/erlang-root-dir "/usr/local/lib/erlang")
(setq rhb/erlang-emacs-dir "/usr/local/lib/erlang/lib/tools-2.6.6/emacs")
(setq rhb/erlang-bin-dir "/usr/local/lib/erlang/bin")
