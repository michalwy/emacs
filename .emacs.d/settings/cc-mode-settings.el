(require 'cc-mode)

(setq c-default-style '((java-mode . "java")
			(awk-mode . "awk")
			(other . "linux")))

(setq-default c-basic-offset 8)
(setq c-backspace-function 'backward-delete-char)

(provide 'cc-mode-settings)
