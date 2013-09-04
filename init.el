(add-to-list 'load-path "~/.emacs.d/vendor")

; custom place to save customizations
(setq custom-file "~/.emacs.d/config/custom.el")
(load custom-file)

(when (file-exists-p "~/.emacs.d/.passwords") (load "~/.emacs.d/.passwords"))

(load "config/global")
(load "config/functions")
(load "config/modes")
;;(load "config/git")

(vendor 'cheat)
(vendor 'magit)
(vendor 'gist)
(vendor 'textile-mode)
(vendor 'textmate)
(vendor 'color-theme)
(vendor 'vivid-chalk) 
(vendor 'zenburn)
(vendor 'yasnippet)
(vendor 'ruby-hacks)
(vendor 'htmlize)
(vendor 'haml-mode)
(vendor 'sass-mode)
(vendor 'xscheme)
(vendor 'peep-open)
(vendor 'rcodetools)
(vendor 'full-ack)
(vendor 'markdown-mode)
(vendor 'clojure-mode)
(vendor 'word-count)
(vendor 'wrap-region)
(wrap-region-mode t)
(global-set-key "\M-+" 'word-count-mode)


(require 'peepopen)
(textmate-mode)

(load "config/theme")
(load "config/full-ack")
(load "config/org")
(load "config/markdown")
(yas/initialize)
(yas/load-directory "~/.emacs.d/snippets")

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(add-hook 'after-init-hook
          #'(lambda ()
              (setenv "PATH"
                      (with-temp-buffer
                        (call-process "/bin/bash"
                                      nil (list (current-buffer) nil) nil
                                      "-l" "-c" "printf %s \"$PATH\"")
                        (buffer-string)))))
