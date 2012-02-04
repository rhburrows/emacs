(provide 'rhb_coffee)

(defun coffee-custom()
  (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
          '(lambda() (coffee-custom)))
