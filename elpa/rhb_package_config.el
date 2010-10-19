(provide 'rhb_package_config)

(setq package-archives ''(("ELPA" . "http://tromey.com/elpa/")
                          ("gnu" . "http://elpa.gnu.org/packages/")))

(when
    (load "package.el")
  (package-initialize))

(setq elpa-installed-packages
      '(ruby-mode
        rspec-mode
        inf-ruby))
