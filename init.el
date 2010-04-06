(setq emacs-dir (file-name-directory load-file-name))
(add-to-list 'load-path emacs-dir)

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

;; TODO do something with this list besides save it
(setq installed-packages
      '(ruby-mode
	inf-ruby
	rspec-mode))

(require 'rhb_config)
