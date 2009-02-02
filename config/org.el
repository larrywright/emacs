;; Org-mode stuff
(setq org-todo-keywords '("TODO" "WAITING" "DEFER" "DONE")) ;; (6)
(setq org-log-done 'time)
;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key (kbd "C-x t") (lambda () (interactive) (find-file-other-frame "~/TODO.txt") (org-mode)))
