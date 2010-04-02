(provide 'rhb_clojure_config)

(add-to-list 'load-path (concat emacs-dir "clojure/clojure-mode"))
(require 'clojure-auto)

(add-to-list 'load-path (concat emacs-dir "clojure/swank"))
;(setq swank-clojure-jar-path "~/src/clojure/target/clojure-lang-1.0-SNAPSHOT.jar")
(setq swank-clojure-binary "/Users/rhburrows/src/clojure-extra/sh-script/clojure")
(require 'swank-clojure-autoload)

(setq auto-mode-alist
      (cons '("\\.clj$" . clojure-mode)
	    auto-mode-alist))
