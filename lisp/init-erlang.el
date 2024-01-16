;;; init-erlang.el --- Erlang mode configuration -*- lexical-binding: t -*-


(setq erlang-root-dir "/usr/lib64/erlang")
(setq erlang-tools-version 3.6)

;; If erlang directory exists, setup environment
(when (file-directory-p erlang-root-dir)
  (let* ((erlang-tools-path (expand-file-name (format "lib/tools-%s/emacs"
						      erlang-tools-version)
					      erlang-root-dir))
	 (erlang-bin-path (expand-file-name "bin" erlang-root-dir)))
    (add-to-list 'load-path erlang-tools-path)
    (add-to-list 'exec-path erlang-bin-path)

    (require 'erlang-start)))


(provide 'init-erlang)

;;; init-erlang.el ends here
