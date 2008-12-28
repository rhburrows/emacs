(provide 'rhb_w3m_config)

(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)

(setq w3m-use-cookies t)