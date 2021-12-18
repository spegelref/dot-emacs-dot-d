;;; init.el --- Load the full configuration -*- lexical-binding: t -*-

;;; Code:

(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq custom-file (locate-user-emacs-file "custom.el"))

(require 'init-el-get) ; Load package manager and install packages
(require 'init-customization)

;; Language specifc configuration
(require 'init-clojure)

(provide 'init)
;;; init.el ends here
