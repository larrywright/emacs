(add-to-list 'load-path "~/.emacs.d/vendor")

; custom place to save customizations
(setq custom-file "~/.emacs.d/config/custom.el")
(load custom-file)

(when (file-exists-p ".passwords") (load ".passwords"))

(load "config/global")
(load "config/functions")
(load "config/modes")
;;(load "config/git")

(vendor 'cheat)
(vendor 'magit)
(vendor 'gist)
(vendor 'twittering-mode)
(vendor 'textile-mode)
(vendor 'textmate)
(vendor 'color-theme)
(vendor 'jabber)
(textmate-mode)
(load "config/theme")