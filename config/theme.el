;; Swiped from defunkt's emacs config http://github.com/defunkt/emacs
(require 'color-theme)
(when (fboundp 'color-theme-initialize)
  (color-theme-initialize))
(setq color-theme-is-global t)

(load-file "~/.emacs.d/vendor/twilight-emacs/color-theme-twilight.el")
(load-file "~/.emacs.d/vendor/zen-and-art.el")
(load-file "~/.emacs.d/vendor/irblack.el")
;(color-theme-zen-and-art)
(color-theme-irblack)