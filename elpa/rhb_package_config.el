(provide 'rhb_package_config)

(when
  (require 'package)
  (add-to-list 'package-archives
               '("marmalade" . "http://marmalade-repo.org/packages/"))
  (package-initialize))

(setq rhb-installed-packages
      '(inf-ruby
        rspec-mode
        ruby-mode
        smex))

;; Stolen from the emacs-starter-kit
(defun starter-kit-elpa-install ()
  "Install all starter-kit packages that aren't installed."
  (interactive)
  (dolist (package rhb-installed-packages)
    (unless (or (member package package-activated-list)
                (functionp package))
      (message "Installing %s" (symbol-name package))
      (package-install package))))

;; On your first run, this should pull in all the base packages.
(unless package-archive-contents (package-refresh-contents))
(starter-kit-elpa-install)
