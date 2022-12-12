;;; init-clisp.el --- Common Lisp conf -*- lexical-binding: t -*-

;;; Code:

(add-hook 'slime-repl-mode-hook 'paredit-mode)
(add-hook 'slime-repl-mode-hook 'rainbow-delimiters-mode)

;; Stop SLIME's REPL from grabbing DEL,
;; which is annoying when backspacing over a '('
(defun override-slime-repl-bindings-with-paredit ()
  (define-key slime-repl-mode-map
    (read-kbd-macro paredit-backward-delete-key) nil))
(add-hook 'slime-repl-mode-hook
	  'override-slime-repl-bindings-with-paredit)

(setq inferior-lisp-program "sbcl")

(provide 'init-clisp)
;;; init-clisp.el ends here
