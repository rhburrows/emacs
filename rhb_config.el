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
(require 'rhb_interface_config)

;;
;; System specific changes
;;
(if (string= window-system "mac")
    (require 'rhb_mac_config))

;;
;; Non-programming emacs modes
;;
(require 'rhb_org_config) ;; Configuration for Org-mode

;;
;; Programming language customizations
;;
(add-to-list 'load-path "~/emacs/erlang") ;; Configuration for Erlang mode
(add-to-list 'load-path "~/emacs/lisp") ;; Configuration for list programming
(add-to-list 'load-path "~/emacs/flymake") ;; Flymake syntax checker
(add-to-list 'load-path "~/emacs/xml") ;; Configuration for XML-modes

(require 'rhb_erlang_config) ;; Loading Erlang mode
(require 'rhb_lisp_config) ;; Loading Lisp mode and Slime
(require 'rhb_flymake_config) ;; Loading Flymake
(require 'rhb_xml_config) ;; Loading XML (nXML) modes
