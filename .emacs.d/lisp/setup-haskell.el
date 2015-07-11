;; turn on indentation mode
(add-hook 'haskell-mode-hook 'haskell-indentation-mode)

;; enable interactive mode and associated keybindings
(require 'haskell-interactive-mode)
(require 'haskell-process)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

;; various settings
(setq haskell-process-suggest-remove-import-lines t)
(setq haskell-process-auto-import-loaded-modules t)
(setq haskell-process-log t)

(provide 'setup-haskell)
