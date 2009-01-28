(require 'inf-ruby)
 
(defun run-ruby-in-buffer (buf script &optional params)
  "Run CMD as a ruby process in BUF if BUF does not exist."
  (let ((abuf (concat "*" buf "*")))
    (when (not (comint-check-proc abuf))
      (set-buffer (make-comint buf rails-ruby-command nil script params)))
    (inferior-ruby-mode)
    (make-local-variable 'inferior-ruby-first-prompt-pattern)
    (make-local-variable 'inferior-ruby-prompt-pattern)
    (setq inferior-ruby-first-prompt-pattern "^>> "
          inferior-ruby-prompt-pattern "^>> ")
    (pop-to-buffer abuf)))

(defun ruby-newline-and-indent ()
  (interactive)
  (newline)
  (ruby-indent-command))

(provide 'ruby-hacks)