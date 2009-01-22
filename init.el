(add-to-list 'load-path "~/.emacs.d/vendor")

; custom place to save customizations
(setq custom-file "~/.emacs.d/config/custom.el")
(load custom-file)

(when (file-exists-p ".passwords") (load ".passwords"))

(load "config/lisp")
(load "config/global")
(load "config/defuns")
(load "config/bindings")
(load "config/modes")
(load "config/theme")
(load "config/temp_files")
(load "config/github")
(load "config/git")

(vendor 'cheat)
(vendor 'magit)
(vendor 'gist)
(vendor 'twittering-mode)
(vendor 'textile-mode)
(vendor 'textmate)
(textmate-mode)