;;; init-customization.el --- User customization of Emacs -*- lexical-binding: t -*-

;;; Code:

;; Remove startup screen
(setq inhibit-startup-screen t)

;; Save backup files in .emacs.d
(setq backup-by-copying t
      backup-directory-alist `(("." .
				,(concat user-emacs-directory "saves")))
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(provide 'init-customization)
;;; init-customization.el ends here
