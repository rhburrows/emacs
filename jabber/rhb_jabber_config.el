(provide 'rhb_jabber_config)

(require 'jabber)
(require 'jabber-autoloads)

(setq jabber-account-list '(
			    ("rhburrows@crystalcommerce.com"
			     (:network-server . "talk.google.com")
			     (:port . 443)
			     (:connection-type . ssl))
			    ("rhburrows@gmail.com"
			     (:network-server . "talk.google.com")
			     (:port . 443)
			     (:connection-type . ssl))
			    ))

(add-hook 'jabber-chat-mode-hook 'goto-address)