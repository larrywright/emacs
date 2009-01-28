;; Swiped from defunkt's emacs config http://github.com/defunkt/emacs
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(prefer-coding-system 'utf-8)
(setq vc-handled-backends nil)
(cua-mode nil)
(setq gist-view-gist t)
(setq inhibit-startup-message t)
(fset 'yes-or-no-p 'y-or-n-p)
;; do not make backup files
(setq make-backup-files nil)
(display-time)

(setq ido-case-fold  t)
(setq ido-enable-flex-matching t)
;;ignore some buffers
(setq  ido-ignore-buffers  '("\\` " "^\*Mess" "^\*Back" "^\*scratch" ".*Completion" "^\*Ido" "*fsm-debug" "*twittering-http"))


;; works in both aquamacs and carbon
(when (functionp 'tool-bar-mode)
  (tool-bar-mode -1))

(global-set-key (kbd "C-x t") (lambda () (interactive) (find-file-other-frame "~/TODO.txt") (org-mode)))

