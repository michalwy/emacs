(global-set-key (kbd "TAB") 'self-insert-command)
(global-set-key (kbd "DEL") 'backward-delete-char)

(global-set-key (kbd "<C-end>") 'end-of-buffer)
(global-set-key (kbd "<C-home>") 'beginning-of-buffer)

(global-set-key [f4] 'goto-line)

(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)
(global-set-key (kbd "C-x b") 'ibuffer)

(global-set-key (kbd "<C-S-up>") 'buf-move-up)
(global-set-key (kbd "<C-S-down>") 'buf-move-down)
(global-set-key (kbd "<C-S-left>") 'buf-move-left)
(global-set-key (kbd "<C-S-right>") 'buf-move-right)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(global-set-key (kbd "C-x C-z") 'magit-status)

(global-set-key (kbd "C-x C-/") 'goto-last-change)

(provide 'kbd-settings)
