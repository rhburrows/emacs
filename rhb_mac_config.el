(provide 'rhb_mac_config)

;(setq mac-command-modifier 'meta)
(setq x-select-enable-clipboard t)

;; Use the mac default to open the browser
(setq
 browse-url-browser-function 'rhb/mac-open)

(defun rhb/mac-open (url &rest ignore)
  "Browse URL using open."
  (interactive "sURL: ")
  (shell-command (concat "open " url)))

;; Override the location of ispell for where it is on my mac
(setq-default ispell-program-name "/usr/local/bin/aspell")

(setq exec-path (append exec-path '("/usr/local/bin")))

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
(setq rhb/erlang-root-dir "/usr/local/lib/erlang")
(setq rhb/erlang-emacs-dir "/usr/local/lib/erlang/lib/tools-2.6.6.1/emacs")
(setq rhb/erlang-bin-dir "/usr/local/lib/erlang/bin")
