(provide 'rhb_jabber_config)

(require 'jabber)
(require 'jabber-autoloads)

(setq jabber-account-list '(
			    ("rhburrows@gmail.com"
			     ;(:password . nil)
			     (:network-server . "talk.google.com")
			     (:port . 443)
			     (:connection-type . ssl))
			    ))

(add-hook 'jabber-chat-mode-hook 'goto-address)