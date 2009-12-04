(provide 'rhb_org_config)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-agenda-files '("~/org/birthday.org" "~/org/newgtd.org"))

(setq org-agenda-custom-commands
      '(("H" "Office and Home Lists"
	 ((agenda)
	  (tags-todo "OFFICE")
	  (tags-todo "HOME")
	  (tags-todo "COMPUTER")
	  (tags-todo "DVD")
	  (tags-todo "READING")))
	("D" "Daily Action List"
	 ((agenda "" ((org-agenda-ndays 1)
		      (org-agenda-storing-strategy
		       (quote ((agenda time-up priority-down tag-up))))
		      (org-deadline-warning-days 0)))))))
