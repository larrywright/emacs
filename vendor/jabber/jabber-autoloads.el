;;; jabber-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (jabber-info jabber-customize jabber-account-list)
;;;;;;  "jabber" "jabber.el" (18488 8726))
;;; Generated autoloads from jabber.el

(defvar jabber-account-list nil "\
List of Jabber accounts.
Each element of the list is a cons cell describing a Jabber account,
where the car is a JID and the CDR is an alist.

JID is a full Jabber ID string (e.g. foo@bar.tld). You can also
specify the resource (e.g. foo@bar.tld/emacs).
The following keys can be present in the alist:
:password is a string to authenticate ourself against the server.
It can be empty.
:network-server is a string identifying the address to connect to,
if it's different from the server part of the JID.
:port is the port to use (default depends on connection type).
:connection-type is a symbol. Valid symbols are `starttls',
`network' and `ssl'.

Only JID is mandatory.  The rest can be guessed at run-time.

Examples:

Two accounts without any special configuration:
\((\"foo@example.com\") (\"bar@example.net\"))

One disabled account with a non-standard port:
\((\"romeo@montague.net\" (:port . 5242) (:disabled . t)))

If you don't have SRV and STARTTLS capabilities in your Emacs,
configure a Google Talk account like this:
\((\"username@gmail.com\" 
  (:network-server . \"talk.google.com\")
  (:connection-type . ssl)))")

(custom-autoload 'jabber-account-list "jabber" t)

(autoload 'jabber-customize "jabber" "\
customize jabber options

\(fn)" t nil)

(autoload 'jabber-info "jabber" "\
open jabber.el manual

\(fn)" t nil)

;;;***

;;;### (autoloads (jabber-activity-mode) "jabber-activity" "jabber-activity.el"
;;;;;;  (18441 20710))
;;; Generated autoloads from jabber-activity.el

(defvar jabber-activity-mode t "\
Non-nil if Jabber-Activity mode is enabled.
See the command `jabber-activity-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `jabber-activity-mode'.")

(custom-autoload 'jabber-activity-mode "jabber-activity" nil)

(autoload 'jabber-activity-mode "jabber-activity" "\
Toggle display of activity in hidden jabber buffers in the mode line.

With a numeric arg, enable this display if arg is positive.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (jabber-edit-bookmarks jabber-get-bookmarks-from-cache
;;;;;;  jabber-get-bookmarks jabber-get-conference-data) "jabber-bookmarks"
;;;;;;  "jabber-bookmarks.el" (18478 46781))
;;; Generated autoloads from jabber-bookmarks.el

(autoload 'jabber-get-conference-data "jabber-bookmarks" "\
Get bookmark data for CONFERENCE-JID.
KEY may be nil or one of :name, :autojoin, :nick and :password.
If KEY is nil, a plist containing the above keys is returned.
CONT is called when the result is available, with JC and the
result as arguments.  If CONT is nil, return the requested data
immediately, and return nil if it is not in the cache.

\(fn JC CONFERENCE-JID CONT &optional KEY)" nil nil)

(autoload 'jabber-get-bookmarks "jabber-bookmarks" "\
Retrieve bookmarks (if needed) and call CONT.
Arguments to CONT are JC and the bookmark list.  CONT will be
called as the result of a filter function or a timer.
If REFRESH is non-nil, always fetch bookmarks.

\(fn JC CONT &optional REFRESH)" nil nil)

(autoload 'jabber-get-bookmarks-from-cache "jabber-bookmarks" "\
Return cached bookmarks for JC.
If bookmarks have not yet been fetched by `jabber-get-bookmarks',
return nil.

\(fn JC)" nil nil)

(autoload 'jabber-edit-bookmarks "jabber-bookmarks" "\
Create a buffer for editing bookmarks interactively.

\(fn JC)" t nil)

;;;***

;;;### (autoloads (jabber-compose) "jabber-compose" "jabber-compose.el"
;;;;;;  (17958 41106))
;;; Generated autoloads from jabber-compose.el

(autoload 'jabber-compose "jabber-compose" "\
Create a buffer for composing a Jabber message.

\(fn JC &optional RECIPIENT)" t nil)

;;;***

;;;### (autoloads nil "jabber-core" "jabber-core.el" (18496 26128))
;;; Generated autoloads from jabber-core.el
 (autoload 'jabber-connect-all "jabber" "Connect to all configured Jabber accounts.\nSee `jabber-account-list'.\nIf no accounts are configured (or ARG supplied), call `jabber-connect' interactively." t)
 (autoload 'jabber-connect "jabber" "Connect to the Jabber server and start a Jabber XML stream.\nWith prefix argument, register a new account.\nWith double prefix argument, specify more connection details." t)

;;;***

;;;### (autoloads (jabber-import-roster jabber-export-roster) "jabber-export"
;;;;;;  "jabber-export.el" (18442 56829))
;;; Generated autoloads from jabber-export.el

(autoload 'jabber-export-roster "jabber-export" "\
Export roster for connection JC.

\(fn JC)" t nil)

(autoload 'jabber-import-roster "jabber-export" "\
Create buffer for roster import for connection JC from FILE.

\(fn JC FILE)" t nil)

;;;***

;;;### (autoloads (jabber-gmail-query jabber-gmail-subscribe) "jabber-gmail"
;;;;;;  "jabber-gmail.el" (18365 38156))
;;; Generated autoloads from jabber-gmail.el

(autoload 'jabber-gmail-subscribe "jabber-gmail" "\
Subscribe to gmail notifications.
See http://code.google.com/apis/talk/jep_extensions/usersettings.html#4

\(fn JC)" t nil)

(autoload 'jabber-gmail-query "jabber-gmail" "\
Request mail information from the Google Talk server (a.k.a. one shot query).
See http://code.google.com/apis/talk/jep_extensions/gmail.html#requestmail

\(fn JC)" t nil)

;;;***

;;;### (autoloads nil "jabber-keymap" "jabber-keymap.el" (18447 55296))
;;; Generated autoloads from jabber-keymap.el

(defvar jabber-global-keymap (let ((map (make-sparse-keymap))) (define-key map "" 'jabber-connect-all) (define-key map "" 'jabber-disconnect) (define-key map "" 'jabber-switch-to-roster-buffer) (define-key map "\n" 'jabber-chat-with) (define-key map "\f" 'jabber-activity-switch-to) (define-key map "" 'jabber-send-away-presence) (define-key map "" 'jabber-send-default-presence) (define-key map "" 'jabber-send-xa-presence) (define-key map "" 'jabber-send-presence) map) "\
Global Jabber keymap (usually under C-x C-j)")

(define-key ctl-x-map "\n" jabber-global-keymap)

;;;***

;;;### (autoloads (jabber-muc-looks-like-personal-p) "jabber-muc-nick-completion"
;;;;;;  "jabber-muc-nick-completion.el" (18442 56829))
;;; Generated autoloads from jabber-muc-nick-completion.el

(autoload 'jabber-muc-looks-like-personal-p "jabber-muc-nick-completion" "\
Return non-nil if jabber MESSAGE is addresed to me.
Optional argument GROUP to look.

\(fn MESSAGE &optional GROUP)" nil nil)

;;;***

;;;### (autoloads (jabber-private-set jabber-private-get) "jabber-private"
;;;;;;  "jabber-private.el" (18442 56829))
;;; Generated autoloads from jabber-private.el

(autoload 'jabber-private-get "jabber-private" "\
Retrieve an item from private XML storage.
The item to retrieve is identified by NODE-NAME (a symbol) and
NAMESPACE (a string).

On success, SUCCESS-CALLBACK is called with JC and the retrieved
XML fragment.

On error, ERROR-CALLBACK is called with JC and the entire IQ
result.

\(fn JC NODE-NAME NAMESPACE SUCCESS-CALLBACK ERROR-CALLBACK)" nil nil)

(autoload 'jabber-private-set "jabber-private" "\
Store FRAGMENT in private XML storage.
SUCCESS-CALLBACK, SUCCESS-CLOSURE-DATA, ERROR-CALLBACK and
ERROR-CLOSURE-DATA are used as in `jabber-send-iq'.

\(fn JC FRAGMENT &optional SUCCESS-CALLBACK SUCCESS-CLOSURE-DATA ERROR-CALLBACK ERROR-CLOSURE-DATA)" nil nil)

;;;***

;;;### (autoloads nil nil ("fsm.el" "jabber-ahc-presence.el" "jabber-ahc.el"
;;;;;;  "jabber-alert.el" "jabber-autoaway.el" "jabber-avatar.el"
;;;;;;  "jabber-browse.el" "jabber-chat.el" "jabber-chatbuffer.el"
;;;;;;  "jabber-chatstates.el" "jabber-conn.el" "jabber-disco.el"
;;;;;;  "jabber-events.el" "jabber-feature-neg.el" "jabber-festival.el"
;;;;;;  "jabber-ft-client.el" "jabber-ft-common.el" "jabber-ft-server.el"
;;;;;;  "jabber-history.el" "jabber-iq.el" "jabber-keepalive.el"
;;;;;;  "jabber-logon.el" "jabber-menu.el" "jabber-modeline.el" "jabber-muc.el"
;;;;;;  "jabber-newdisco.el" "jabber-osd.el" "jabber-ourversion.el"
;;;;;;  "jabber-presence.el" "jabber-ratpoison.el" "jabber-register.el"
;;;;;;  "jabber-roster.el" "jabber-sasl.el" "jabber-sawfish.el" "jabber-screen.el"
;;;;;;  "jabber-search.el" "jabber-si-client.el" "jabber-si-common.el"
;;;;;;  "jabber-si-server.el" "jabber-socks5.el" "jabber-time.el"
;;;;;;  "jabber-truncate.el" "jabber-util.el" "jabber-vcard-avatars.el"
;;;;;;  "jabber-vcard.el" "jabber-version.el" "jabber-watch.el" "jabber-widget.el"
;;;;;;  "jabber-wmii.el" "jabber-xmessage.el" "jabber-xml.el" "srv.el")
;;;;;;  (18496 31002 700675))

;;;***

(provide 'jabber-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; jabber-autoloads.el ends here
