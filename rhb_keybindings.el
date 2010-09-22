(provide 'rhb_keybindings)

(global-set-key "\M-s" 'tags-search)
(global-set-key "\C-x5f" 'find-file-next-frame)

(defun backward-kill-word-or-kill-region (&optional arg)
  (interactive "p")
  (if (region-active-p)
      (kill-region (region-beginning) (region-end))
    (backward-kill-word arg)))
(global-set-key "\C-w" 'backward-kill-word-or-kill-region)

(global-set-key "\C-cm" 'woman)
