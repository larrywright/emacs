;; Swiped from defunkt's emacs config http://github.com/defunkt/emacs
; Dired
(require 'dired)

; remap 'o' in dired mode to open a file
(defun dired-open-mac ()
  (interactive)
  (let ((file-name (dired-get-file-for-visit)))
    (if (file-exists-p file-name)
        (call-process "/usr/bin/open" nil 0 nil file-name))))
(defun dired-open-windows ()
  (interactive)
  (let ((file-name (dired-get-file-for-visit)))
    (if (file-exists-p file-name)
        (call-process "cmd.exe"  nil 0 nil "/C" file-name))))
(if (eq system-type 'windows-nt)
    (define-key dired-mode-map "o" 'dired-open-windows)
  (if (eq system-type 'darwin)
      (define-key dired-mode-map "o" 'dired-open-mac)
    ))

