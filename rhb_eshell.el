(provide 'rhb_eshell)

;; Add extra stuff to path
(setenv "PATH" (concat
                "/usr/local/bin:"
                (getenv "PATH")
                ":~/.cabal/bin:/usr/games:/usr/local/sbin"))
         
