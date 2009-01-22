;; Swiped from defunkt's emacs config http://github.com/defunkt/emacs
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(prefer-coding-system 'utf-8)
(setq vc-handled-backends nil)
(cua-mode nil)
(setq gist-view-gist t)

;; works in both aquamacs and carbon
(when (functionp 'tool-bar-mode)
  (tool-bar-mode -1))

