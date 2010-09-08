(provide 'rhb_twitter_config)

(require 'twittering-mode)
(setq twittering-username "rhburrows")

(defun rhb/clear-twittering-pass ()
  (interactive)
  (setq twittering-password nil)
  (setq twittering-proxy-password nil))
