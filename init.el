;;; init.el --- Init configuration -*- lexical-binding: t -*-

(let ((minver "29.1"))
  (when (version< emacs-version minver)
    (error "Tested for emacs version 29.1 -- current version v%s."
	   emacs-version)))

(add-to-list 'load-path
	     (expand-file-name "lisp" user-emacs-directory))

;; Customize emacs behaviour
(setq inhibit-startup-message t)


;; Setup subsystems

(require 'init-elpa) ; Installs required packages.



(provide 'init)

;;; init.el ends here
