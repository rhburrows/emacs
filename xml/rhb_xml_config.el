(provide 'rhb_xml_config)

(load "~/emacs/xml/nxml-mode/rng-auto.el")
(setq auto-mode-alist
      (cons '("\\.\\(xml\\|xsl\\|rng\\|xhtml\\|html\\)\\'" . nxml-mode)
	    auto-mode-alist))