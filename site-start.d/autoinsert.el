(auto-insert-mode)
; テキストファイルからテンプレートを読み込む
;(setq auto-insert-directory "~/template/")
;(define-auto-insert "\\.tex$" "tex-template.tex")

(setq auto-insert-alist nil)
(setq auto-insert-alist
      (append '(
                (("\\.tex$" . "TeX template")
                 nil ;; ここに"name?"とか書くと、最初にミニバッファで"name?"ってでて入力を促される。入力したものはstrという変数に入る。
                 "%#! platex " (file-name-nondirectory (buffer-file-name)) " && dvipdfmx -d 5 " (substring (file-name-nondirectory (buffer-file-name)) 0 -4) "\n"
                 "\n"
		 "\\documentclass[]{}\n"
		 "\\title{}\n"
		 "\\author{}\n"
		 "\\date{}\n"
		 "\n"
		 "\\begin{document}\n\n"
                 _ ;; アンダーバーを書いたところにカーソルが移動する
		 "\\end{document}\n"
                 )) auto-insert-alist))
