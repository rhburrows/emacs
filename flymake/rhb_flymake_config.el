(provide 'rhb_flymake_config)

(require 'flymake)
;; Turn off all by default
(setq flymake-allowed-file-name-masks '())

(defun flymake-erlang-init()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
		     'flymake-create-temp-inplace))
	 (local-file (file-relative-name
		      temp-file
		      (file-name-directory buffer-file-name))))
    (list "~/.emacs.d/flymake/bin/eflymake" (list local-file))))

(add-to-list 'flymake-allowed-file-name-masks
	     '("\\.erl\\'" flymake-erlang-init))

(add-hook 'find-file-hook 'flymake-find-file-hook)

(defun flymake-get-tex-args (file-name)
  (list "/usr/texbin/chktex" (list "-file-line-error-style" file-name)))

(assq-delete-all "\\.java\'" flymake-allowed-file-name-masks)