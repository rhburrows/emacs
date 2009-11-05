(provide 'rhb_notify_config)

(require 'dbus)
(require 'notify)

(defalias 'rhb/notify 'notify)

;; Hook in erc to use libnotify for notifications
(defun my-erc-hook (match-type nick message)
  "Shows a notify notification, when users' nick is mentioned"
  (and (eq match-type 'current-nick)
       (notify (concat "Your nick was mentioned on: "
		      (buffer-name (current-buffer)))
	      message)))

(add-hook 'erc-text-matched-hook 'my-erc-hook)

