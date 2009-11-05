(provide 'rhb_growl_config)

(require 'growl)

(defalias 'rhb/notify 'notify)

;; Hook in erc to use growl for notifications
(defun my-erc-hook (match-type nick message)
  "Shows a growl notification, when users' nick is mentioned"
  (and (eq match-type 'current-nick)
       (growl (concat "Your nick was mentioned on: "
		      (buffer-name (current-buffer)))
	      message)))

(add-hook 'erc-text-matched-hook 'my-erc-hook)
