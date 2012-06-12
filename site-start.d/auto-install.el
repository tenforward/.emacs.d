; 加藤オリジナル
(require 'auto-install)
;; auto-install でインストールされた lisp を load-path に追加．
(add-to-list 'load-path auto-install-directory)
;; EmacsWiki のページ名を補完候補に追加．
;; (auto-install-update-emacswiki-package-name t)
;; install-elisp.el 互換モード．
(auto-install-compatibility-setup)
;; ediff 関連バッファを 1 つのフレームにまとめる
(setq ediff-window-setup-function 'ediff-setup-window-plain)


;;; 以下，auto-install でインストールしたものをまとめる
(require 'open-junk-file)
(setq open-junk-file-format "~/junk/%Y-%m-%d-%H%M%S.")