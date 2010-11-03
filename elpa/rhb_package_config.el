(provide 'rhb_package_config)

(when
    (load "package.el")
  (package-initialize))

(setq elpa-installed-packages
      '(ruby-mode
        rspec-mode
        inf-ruby))
