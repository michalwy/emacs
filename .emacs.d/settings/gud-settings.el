(setq gdb-many-windows t)

(defun gdb-comint-buffer-name ()
  (buffer-name gud-comint-buffer))
(defun gdb-source-buffer-name ()
  (buffer-name (window-buffer gdb-source-window)))

(defun gdb-select-window (header)
  (interactive "Sheader: ")

  (let* ((header-alternate (case header
			     ('locals		'registers)
			     ('registers	'locals)
			     ('breakpoints	'threads)
			     ('threads		'breakpoints)))
	 (buffer (intern (concat "gdb-" (symbol-name header) "-buffer")))
	 (buffer-names (mapcar (lambda (header)
				 (funcall (intern (concat "gdb-"
							  (symbol-name header)
							  "-buffer-name"))))
			       (if (null header-alternate)
				   (list header)
				 (list header header-alternate))))
	 (window (if (eql header 'source)
		     gdb-source-window
		   (or (get-buffer-window (car buffer-names))
		       (when (not (null (cadr buffer-names)))
			 (get-buffer-window (cadr buffer-names)))))))
    (when (not (null window))
      (let ((was-dedicated (window-dedicated-p window)))
	(select-window window)
	(set-window-dedicated-p window nil)
	(when (member header '(locals registers breakpoints threads))
	  (switch-to-buffer (gdb-get-buffer-create buffer))
	  (setq header-line-format (gdb-set-header buffer)))
	(set-window-dedicated-p window was-dedicated))
      t)))

(mapcar (lambda (setting)
	  (lexical-let ((key (car setting))
			(header (cdr setting)))
	    (global-set-key (concat "\C-c\C-g" key) #'(lambda ()
							(interactive)
							(gdb-select-window header)))))
	'(("c" . comint)
	  ("l" . locals)
	  ("r" . registers)
	  ("u" . source)
	  ("s" . stack)
	  ("b" . breakpoints)
	  ("t" . threads)))

(global-set-key [f5]
		(lambda ()
		  (interactive nil)
		  (gud-call "start")))
(global-set-key [f7] 'gud-finish)
(global-set-key [f8] 'gud-step)
(global-set-key [f9] 'gud-next)
(global-set-key [f10]
		(lambda ()
		  (interactive nil)
		  (gud-tbreak "%f:%l c")
		  (gud-cont "%p")))

(provide 'gud-settings)