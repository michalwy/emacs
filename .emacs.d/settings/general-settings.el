(setq current-language-environment "English")
(setq european-calendar-style 't)
(setq calendar-week-start-day 1)
(setq ispell-dictionary "english")

(setq shell-file-name "/bin/bash")
(setq tex-shell-file-name "/bin/bash")
(setq grep-command "grep -i -nH -e ")

(setq inhibit-startup-screen 1)
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

(menu-bar-mode 0)

(require 'tool-bar)
(tool-bar-mode 0)

(speedbar t)

(setq-default fill-column 70)
(setq-default truncate-lines 1)

(line-number-mode 1)
(column-number-mode 1)

(setq-default case-fold-search 1)
(setq read-file-name-completion-ignore-case t)
(setq read-buffer-completion-ignore-case t)
(icomplete-mode t)

(setq require-final-newline t)

(transient-mark-mode 1)

(size-indication-mode 1)

(setq backup-inhibited t)
(setq auto-save-default nil)

(setq undo-limit 100000)

(require 'paren)
(show-paren-mode 1)
(setq show-paren-style 'expression)

(setq c-basic-offset 8)
(setq-default indent-tabs-mode 1)
(setq tab-width 8)

(cua-mode)

(provide 'general-settings)
