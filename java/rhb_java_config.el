(provide 'rhb_java_config)

(require 'java-mode-indent-annotations)

(add-hook 'java-mode-hook
          'java-mode-indent-annotations-setup)