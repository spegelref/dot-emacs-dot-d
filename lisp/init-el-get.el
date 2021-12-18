;;; init-el-get.el --- Setup el-get and load packages -*- lexical-binding: t -*-

;;; Code:

;; Work-around for https://debbugs.gnu.org/cgi/bugreport.cgi?bug=34341
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

;; Install packages

;; Dependencies for CIDER v1.1.0
(el-get-bundle clojure-mode :checkout "5.12.0")
(el-get-bundle parseclj :checkout "v1.0.0")
(el-get-bundle parseedn :checkout "v1.0.0")
(el-get-bundle dash :checkout "1.6.0")
(el-get-bundle epl :checkout "0.4")
(el-get-bundle pkg-info :checkout "0.4")
(el-get-bundle queue :checkout "0.2")
(el-get-bundle spinner :checkout "1.7")
(el-get-bundle sesman :checkout "v0.3.2")

(el-get-bundle cider :checkout "v1.1.0")
(el-get-bundle paredit)
(el-get-bundle rainbow-delimiters)

(el-get 'sync)

(provide 'init-el-get)
;;; init-el-get.el ends here
