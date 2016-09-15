(require 'go-mode)

(defun my-go-mode-fn ()
  (setq-default indent-tabs-mode 1)
)

(add-hook 'go-mode-hook 'my-go-mode-fn t)
(add-hook 'before-save-hook #'gofmt-before-save)

(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c i") 'go-goto-imports)))



(provide 'setup-go)
