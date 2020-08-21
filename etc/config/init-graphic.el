;; 图形化插件特殊设置
(when (graphic-p)
	(add-hook 'after-make-frame-functions
		  (lambda (new-frame)
			(select-frame new-frame)
			(dolist (elisp-code graphic-only-plugins-setting)
			  (eval elisp-code)))))


(provide 'init-graphic)
