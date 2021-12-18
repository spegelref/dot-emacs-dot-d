;;; init-clojure.el --- Setup Clojure specific configuration  -*- lexical-binding: t -*-

;;; Code:

(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;; Confgure CIDER
(setq cider-lein-command "~/bin/lein")

(provide 'init-clojure)
;;; init-clojure.el ends here
