;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Simon McFarlane"
      user-mail-address "sm@desu.ne.jp")

(setq doom-theme 'doom-one)

(setq confirm-kill-emacs nil)

;; Org mode options
(after! org

  ;; Recursively search the uni folder for .org files to collate for org-agenda
  (setq org-directory "~/uni/")
  (setq org-agenda-files (directory-files-recursively "~/uni/" "\\.org$"))

  ;; Disable warnings for deadlines
  (setq org-deadline-warning-days 0)

  ;; Start org agenda today
  (setq org-agenda-start-day "0d")

  ;; Set org agenda length to 14 days
  (setq org-agenda-span 14)

  )

;; Map SPC a to org-agenda-list
(map! :leader
      :desc "Open todo list"
      "a" #'org-agenda-list)

;; Calm Centaur Tabs' aggressive grouping a little.
;; Everything should be visible except Emacs buffers and buffers opened by org-agenda, except the agenda itself
(after! centaur-tabs
  (defun centaur-tabs-buffer-groups ()
    (list
     (cond
      ((memq (current-buffer) org-agenda-new-buffers)
       "Emacs")
      ((memq major-mode '(org-mode org-agenda-mode diary-mode))
       "Common")
      ((string-equal "*" (substring (buffer-name) 0 1))
       "Emacs")
      (t "Common")
      ))))
