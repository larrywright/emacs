(require 'package)
(defvar my-packages '( ack-and-a-half diminish dash-at-point
  elisp-slime-nav nrepl expand-region csv-mode flx-ido flycheck
  gist smex evernote-mode git-commit-mode gitconfig-mode
  gitignore-mode better-defaults ssh helm helm-projectile
  ido-ubiquitous magit ruby-mode clojure-mode paredit smartparens
  zenburn-theme dash rinari helm-rails
  color-theme-sanityinc-tomorrow color-theme-solarized
  helm-themes ir-black-theme twilight-theme zen-and-art-theme yasnippet) )
(dolist (repo '(("elpa"      . "http://tromey.com/elpa/")
                ("marmalade" . "http://marmalade-repo.org/packages/")
                ("melpa"     . "http://melpa.milkbox.net/packages/")))
  (add-to-list 'package-archives repo))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'my-packages)
