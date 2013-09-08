;;(add-to-list 'load-path "~/.emacs.d/vendor")

(add-to-list 'load-path "~/.emacs.d/")

;;TODO: make this conditional. If the package directory doesnt exist, do it. Else, should be manual
(require 'my-packages) 

(require 'color-theme)
(require 'better-defaults)
(require 'smex)
(require 'ir-black-theme)
(require 'nrepl)
(require 'dash)
(require 'clojure-mode)
(require 'helm)
(require 'helm-projectile)
(require 'magit)
(require 'smartparens)
(require 'ack-and-a-half)
(require 'ruby-mode)
(require 'ssh)
(require 'dash-at-point)

;; TODO Move these things into their own files

(global-set-key "\C-cd" 'dash-at-point)
(add-hook 'rinari-minor-mode-hook
          (lambda () (setq dash-at-point-docset "rails")))

;;(color-theme-solarized-dark)
(menu-bar-mode t) ;;overrides what is in better-defaults

(global-set-key (kbd "M-x") 'smex) ; has to happen after ido-hacks-mode

(defalias 'yes-or-no-p 'y-or-n-p)

(column-number-mode t)
(setq inhibit-startup-message t)
(put 'narrow-to-region 'disabled nil)

;;always start a shell
(shell)

