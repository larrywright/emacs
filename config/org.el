;; Org-mode stuff
(setq org-todo-keywords '("TODO" "WAITING" "DEFER" "DONE")) ;; (6)
(setq org-log-done 'time)
;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key (kbd "C-x t") (lambda () (interactive) (find-file-other-frame "~/TODO.txt") (org-mode)))
(setq org-todo-keyword-faces
      '(("TODO"      . (:background "darkGreen" :weight bold))
        ("WAITING"  . (:foreground "yellow" :weight bold))
        ("DEFER"  . (:foreground "silver"))
        ("DONE"  . (:foreground "grey"))))
(setq org-agenda-custom-commands
      '(("w" occur-tree "WAITING")("d" occur-tree "DELEGATED"))) ;; C-c a w/d will open an agenda with just waiting/delegated items respectively
(add-hook 'org-mode-hook '(lambda()
                            (set-face-foreground 'org-scheduled-previously "firebrick")
                            (set-face-foreground 'org-scheduled-today "limegreen")
))