;; load path
(add-to-list 'load-path "~/.emacs.d/lisp")

;; setup package
(require 'setup-package)

;; install missing extensions
(defun init--install-packages ()
  (packages-install
   (cons 'undo-tree marmalade)
   (cons 'lua-mode marmalade)
   (cons 'auto-complete melpa)
   (cons 'yasnippet melpa)
   (cons 'multi-term melpa)
   (cons 'magit melpa)
   (cons 'monky melpa)
   (cons 'json-mode melpa)
   (cons 'web-mode melpa)
   (cons 'flymake melpa)
   (cons 'csharp-mode melpa)
   (cons 'go-mode melpa)
   (cons 'ag melpa)
   (cons 'flx-ido melpa)
   (cons 'projectile melpa)
   (cons 'yaml-mode melpa)
   (cons 'thrift melpa)))

(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))

;; setup customizations
(require 'setup-defaults)
(require 'setup-theme)
(eval-after-load 'dired '(require 'setup-dired))
(eval-after-load 'org '(require 'setup-org))
(require 'setup-ido)
(require 'setup-uniquify)
(require 'setup-flx)
(require 'setup-projectile)
(require 'setup-multi-term)
(require 'setup-ffip)
(require 'setup-rebuilder)
(require 'setup-clipboard)
(require 'setup-web)
(require 'setup-xml)
(require 'setup-python)
(require 'setup-rst)
(require 'setup-csharp)
(require 'setup-go)
(require 'setup-yaml)

;; setup extensions
(eval-after-load 'lua-mode '(require 'setup-lua))
(require 'setup-undo-tree)
(require 'setup-auto-complete)
(require 'setup-yasnippet)
(require 'setup-xcode)
(require 'setup-json-mode)

;; final tweaks
(require 'setup-mappings)
(require 'setup-aliases)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
