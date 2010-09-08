(provide 'rhb_org_config)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(setq org-log-done t)

(add-hook 'remember-mode-hook 'org-remember-apply-template)

(setq org-agenda-files
      '("~/Dropbox/org/birthday.org" "~/Dropbox/org/newgtd.org"))

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

(setq org-remember-templates
      '((116 "** TODO %?\n   %u" "~/Dropbox/org/newgtd.org" "Tasks")
	(110 "** %u %?" "~/Dropbox/org/journal.org" "Current")))
(setq remember-annotation-functions 'org-remember-annotation)
(setq remember-handler-functions 'org-remember-handler)
