(provide 'rhb_js_config)

(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(setq js2-bounce-indent-flag nil)

(autoload 'unityjs-mode "unityjs-mode" "Major mode for editing Unity Javascipt code.")
(require 'unityjs-mode)
(setq js-indent-level 2)
