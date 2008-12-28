(provide 'rhb_g_config)

(load-library "g")

(defun rhb_new_blog_post()
  "Create a new blog post to rhburrows.blogspot.com and set up the appropriate modes"
  (interactive)
  (gblogger-new-entry "http://www.blogger.com/feeds/5958465983876364674/posts/default")
  (turn-off-auto-fill))