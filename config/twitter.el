
(add-hook 'twittering-mode-hook '(lambda()

                                   (set-face-foreground 'twittering-username-face "Limegreen")
                                   (set-face-foreground 'twittering-uri-face "OrangeRed1")
                                   (set-face-foreground 'twittering-time-face "grey")
                                   (setq twittering-status-format "%s\n%t\n%@")

))