(provide 'rhb_markdown_config)

(autoload 'markdown-mode "~/emacs/markdown/markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (cons '("\\.markdown" . markdown-mode) auto-mode-alist))