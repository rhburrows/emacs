(provide 'rhb_mac_config)

(setq mac-command-modifier 'meta)
(setq x-select-enable-clipboard t)

(global-set-key "\C-cm" 'mac-toggle-max-window)

;;
;; Support for growl for notifications
;; http://growl.info/
(add-to-list 'load-path "~/emacs/growl")
(require 'rhb_growl_config)

;;
;; Commands to run things in Mac's terminal
;; http://gist.github.com/11310
(defun tell-terminal (commands)
  "Use osascript to tell Terminal.app to do stuff"
  (interactive)
  (shell-command
   (concat
    "osascript"
    (mapconcat
     '(lambda (command) (concat " -e 'tell application \"Terminal\" "
				command "'"))
     commands ""))))

(defun terminal-there (dir)
  "Open Terminal.app and change working directory."
  (interactive)
  (tell-terminal (list
		  (concat "to do script \"cd " dir "\"")
		  "to activate")))

(defun terminal-here ()
  "Open Terminal.app in `default-directory'."
  (interactive)
  (terminal-there default-directory))

; (global-set-key "\C-c\C-t" 'terminal-here)