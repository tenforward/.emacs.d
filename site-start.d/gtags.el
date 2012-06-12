(require 'gtags)

;; パスの表示モードを相対パスに
(setq gtags-path-style 'relative)

;; タグジャンプ先を読み込み専用に
(setq view-read-only t)
(setq gtags-read-only t)

(setq gtags-mode-hook
      '(lambda ()
         (local-set-key "\M-t" 'gtags-find-tag)
         (local-set-key "\M-r" 'gtags-find-rtag)
         (local-set-key "\M-s" 'gtags-find-symbol)
         (local-set-key "\C-t" 'gtags-pop-stack)
         ))