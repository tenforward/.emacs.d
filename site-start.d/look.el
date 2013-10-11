;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Plamo Linux emacs 用設定ファイル (基本部分)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 
;; 言語環境
;; 

;;; 日本語環境 
(set-language-environment "Japanese")
;(set-default-coding-systems 'euc-japan)

;; 
;; 見た目
;; 

;;; メニューバーを日本語にします
;(setq menu-coding-system 'euc-japan)
;(if (equal (substring (concat (getenv "LANG") "__") 0 2) "ja")
;    (load "menu-tree"))

;;; Window システムで起動した場合
(if window-system
    (progn
      ;;; 色付け
      (global-font-lock-mode 1)
      ;;; スクロールバー
      (set-scroll-bar-mode 'right)
      ;;; Emacs21 以上の設定 (これも必要かな? if 文は取って単なる progn に入れてもよいかも?)
      (if (>= emacs-major-version 21)
	  (progn
	    ;;; カーソルを点滅させない
	    (blink-cursor-mode nil)
	    ;;; 非選択窓ではカーソル表示をしない (動いてない?=>emacs23)
	    ;(setq cursor-in-non-selected-windows nil)
	    ;;; フォントのスケーラブルをしない (有効?=>emacs23
	    ;(setq scalable-fonts-allowed nil)
	    ;;; tool-bar を消す
	    (tool-bar-mode 0)
	    (menu-bar-mode 1)
	    ;;; ツールバーのshadowとmarginの設定
	    ;;; (デフォルトにしておかないとMewの時の挙動が変:-P)
	    ;(setq tool-bar-button-relief 3)
	    ;(setq tool-bar-button-margin 1)
	    ;;; 行間の設定
	    ;(set-default 'line-spacing 1)
	    ;;; ホイールマウスを有効にする
	    (mouse-wheel-mode)
	    ;; 現在行に色を付ける
	    ;(global-hl-line-mode 1)
	    ;(set-face-background 'hl-line "gray90")
	    ;; Window の設定
	    (setq initial-frame-alist
		  (append (list
			   '(foreground-color . "Navy")
			   '(background-color . "CornSilk")
			   '(top . 50)
			   '(left . 100)
			   '(width . 100)
			   '(height . 40)
			   )))
	    )) ; Emacs21 以上の設定

      ;;; Emacs23 以上の設定 (TrueType/OpenType フォントの使用)
      (if (>= emacs-major-version 23)
          (progn
;	    (set-default-font "Bitstream Vera Sans Mono-8")
	    (set-default-font "Inconsolata-9")
	    (set-fontset-font
	     (frame-parameter nil 'font)
	     'japanese-jisx0208
	     '("ヒラギノ角ゴ Pro" . "iso10646-1"))
;	     '("VL ゴシック" . "iso10646-1"))
	    (set-fontset-font
	     (frame-parameter nil 'font)
	     'japanese-jisx0212
	     '("ヒラギノ角ゴ Pro" . "iso10646-1"))
;	     '("VL ゴシック" . "iso10646-1"))
            ;; Ascii フォントと日本語フォントの幅を調整する
;	    (setq face-font-rescale-alist
;		  '((".*IPAexゴシック" . 1.3)
;		    (".*VL ゴシック.*" . 1.3)
;                    (".*ヒラギノ.*". 1.2)
;		    ("-cdac$" . 1.3)))
	    )) ; Emacs23 以上の設定

      )
;      )) ; Window システムで起動した場合

  ;;; mule/emacs -nw で起動した時の設定
  (progn
    ;;; メニューバーを消す
    ;(menu-bar-mode 0)
    ;;; 色付け
    (global-font-lock-mode 1)
    ;;; スクロールバーの表示
    (scroll-bar-mode 0)
    ))

;;; ステータスラインに時間を表示する
(setq display-time-24hr-format t)
(setq display-time-format "%m/%d(%a) %R")
(setq display-time-day-and-date t)
(setq display-time-interval 30)
(display-time)

;(add-to-list 'default-frame-alist '(alpha . 80)) 
