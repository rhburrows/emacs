(provide 'rhb_eshell)

(defun eshell/rails-model (&rest args)
  "Open a rails model if this is the project directory"
  (mapc #'find-file (mapcar
                     (lambda (name)
                       (expand-file-name (concat "./app/models/" name ".rb")))
                     (eshell-flatten-list (reverse args)))))

;; Add extra stuff to path
(setenv "PATH" (concat
                "/usr/local/bin:"
                (getenv "PATH")
                ":~/.cabal/bin:/usr/games:/usr/local/sbin"))
         
