(provide 'rhb_erlang_config)

;; In order to load erlang mode the following variables need to be set
;; The should be set in parts of the config for the specific platforms
;; So that it isn't required that erlang is installed in the same location
(defvar rhb/erlang-root-dir nil
  "The root directory for the erlang install")
(defvar rhb/erlang-emacs-dir nil
  "The directory of erlang's emacs files")
(defvar rhb/erlang-bin-dir nil
  "Erlang's bin directory")

;; Only load the emacs modes if the appropriate paths have been set
(if (and
     rhb/erlang-root-dir
     rhb/erlang-emacs-dir
     rhb/erlang-bin-dir)
    (progn
      (add-to-list 'load-path rhb/erlang-emacs-dir)
      (add-to-list 'exec-path rhb/erlang-bin-dir)
      (setq erlang-root-dir rhb/erlang-root-dir)
      (require 'erlang-start)))

(add-to-list 'load-path (concat emacs-dir "share/distel/elisp"))
(require 'distel)
(distel-setup)

(add-hook 'erlang-mode-hook
          (lambda ()
            (setq inferior-erlang-machine-options '("-sname" "emacs"))))

(defconst distel-shell-keys
  '(("\C-\M-i" erl-complete)
    ("\M-?"    erl-complete)
    ("\M-."    erl-find-source-under-point)
    ("\M-,"    erl-find-source-unwind)
    ("\M-*"    erl-find-source-unwind))
  "Additional keys to bind when in Erlang shell.")

(add-hook 'erlang-shell-mode-hook
          (lambda ()
            (dolist (spec distel-shell-keys)
              (define-key erlang-shell-mode-map (car spec) (cadr spec)))))