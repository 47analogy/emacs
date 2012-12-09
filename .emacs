;; -------------------------
;; Kevin Depue (2012)
;; Emacs configuration file.
;; -------------------------

;; load path
(add-to-list 'load-path "~/.emacs.d/")

;; setup package
(require 'setup-package)

;; install missing extensions
(defun init--install-packages ()
  (packages-install
   (cons 'undo-tree marmalade)
   (cons 'lua-mode marmalade)
   (cons 'auto-complete melpa)))

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
(require 'setup-ffip)
(require 'setup-clipboard)

;; setup extensions
(require 'setup-undo-tree)
(require 'setup-auto-complete)

;; setup language extensions
(eval-after-load 'lua-mode '(require 'setup-lua))

;; map file extensions to modes
(require 'mode-mappings)

;; ;; yasnippet
;; (setq yas-snippet-dirs "~/.emacs.d/snippets")
;; (yas-global-mode 1)
