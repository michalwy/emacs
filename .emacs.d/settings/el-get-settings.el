(setq plugin-path "~/.emacs.d/el-get/")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://github.com/dimitri/el-get/raw/master/el-get-install.el")
    (end-of-buffer)
    (eval-print-last-sexp)))

(setq my:el-get-packages
      '(el-get 
	switch-window
	auto-complete
	buffer-move
	smex
	magit
	))

(el-get 'sync my:el-get-packages)

(provide 'el-get-settings)
