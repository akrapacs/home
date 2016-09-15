(defun my-csharp-style ()
  (local-set-key (kbd "{") 'c-electric-brace))

(add-hook 'csharp-mode-hook 'my-csharp-style)

(provide 'setup-csharp)
