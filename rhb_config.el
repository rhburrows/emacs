;;;
;;; Ryan Burrows' Emacs customization file
;;;
;;; email: rhburrows@gmail.com
;;;
(provide 'rhb_config)

;;
;; General Interface Changes
;;
(require 'rhb_keybindings)
(require 'rhb_ui_config)

;;
;; System specific changes
;;
(if (string= window-system "mac")
    (require 'rhb_mac_config))

;;
;; Programming language customizations
;;
(add-to-list 'load-path "~/emacs/erlang") ;; Configuration for Erlang mode
(add-to-list 'load-path "~/emacs/flymake") ;; Flymake syntax checker

(require 'rhb_erlang_config) ;; Loading Erlang mode
(require 'rhb_flymake_config) ;; Loading Flymake
