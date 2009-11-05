(provide 'rhb_jabber_config)

(require 'jabber)
(require 'jabber-alert)
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

(defun rhb/jabber-alert (from buffer text proposed-alert)
  (rhb/notify
   (concat "Msg from: " (jabber-jid-displayname from))
   text))
(defun rhb/jabber-muc-alert (nick group buffer text proposed-alert)
  (rhb/notify
   (concat "["
	   (jabber-jid-displayname group)
	   "]" nick ":")
   text))

(add-hook 'jabber-alert-message-hooks 'rhb/jabber-alert)
(add-hook 'jabber-alert-muc-hooks 'rhb/jabber-muc-alert)
(add-hook 'jabber-alert-presence-hooks 'rhb/jabber-alert)

(add-hook 'jabber-chat-mode-hook 'goto-address)