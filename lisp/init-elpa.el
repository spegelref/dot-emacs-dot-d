;;; init-elpa.el -- Settings for package.el -*- lexical-bindings: t -*-

(require 'package)

;;; Install into serpate package dirs for each Emacs version,
;;; to prevent bytecode incompatibility
(setq package-user-dir
      (expand-file-name (format "elpa-%s.%s"
				emacs-major-version
				emacs-minor-version)
			user-emacs-directory))

;;; Standard package repositories

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)


;;; On-demand installation of packages

(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally require MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (when (stringp min-version)
    (setq min-version (version-to-list min-version)))
  (or (package-installed-p package min-version)
      (let* ((known (cdr (assoc package package-archive-contents)))
	     (best (car (sort known
			      (lambda (a b)
				(version-list-<=
				 (package-desc-version b)
				 (package-desc-version a)))))))
	(if (and best
		 (version-list-<= min-version (package-desc-version best)))
	    (package-install best)
	  (if no-refresh
	      (error "No version of %s >= %S is available"
		     package min-version)
	    (package-refresh-contents)
	    (require-package package min-version t)))
	(package-installed-p package min-version))))

(defun maybe-require-package (package &optional min-version-no-refresh)
  "Try to install PACKAGE, and return non-nil if successful.
In the event of failure, return nil and print a warning message.
Optionally require MIN-VERSION. If NO-REFRESH is non-nil, the
available package lists will not be re-downloaded in order to
locate PACKAGE."
  (condition-case err
      (require-package package min-version no-refresh)
    (error
     (message "Couldn't install optional package `%s': %S" package err)
     nil)))

;;; Start package.el

(setq package-enable-at-startup nil)
(package-initialize)	      


(provide 'init-elpa)

;;; init-elpa.el ends here