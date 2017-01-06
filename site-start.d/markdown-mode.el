(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(add-hook 'markdown-mode-hook
          '(lambda ()
             (electric-indent-local-mode -1)))
