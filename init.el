;;; init.el --- Init configuration -*- lexical-binding: t -*-

(let ((minver "29.1"))
  (when (version< emacs-version minver)
    (error "Tested for emacs version 29.1 -- current version v%s."
	   emacs-version)))

(add-to-list 'load-path
	     (expand-file-name "lisp" user-emacs-directory))

;;; init.el ends here
