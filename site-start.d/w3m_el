;; Emacs-w3m

;; 起動設定
(require 'w3m-load)
(autoload 'w3m "w3m" "Interface for w3m on Emacs." t)
;;; デフォルトで画像表示
(setq w3m-default-display-inline-images t)

;; Wanderlust で html 表示時に w3m を使う
(require 'mime-w3m)

;;; 読み込んで安全な URL
;(setq mime-w3m-safe-url-regexp "http\\:\\/\\/.*$") 
(setq mime-w3m-safe-url-regexp nil)

;;; wanderlust では画像表示をしない
(setq mime-w3m-display-inline-images nil)

;; message buffer で、C-u M-i で、inline image 表示
;; 安全だと思われる、メールだけ、表示する。
(defun wl-summary-w3m-safe-toggle-inline-images (&optional arg)
  "Toggle displaying of all images in the message buffer.
If the prefix arg is given, all images are considered to be safe."
  (interactive "P")
  (save-excursion
    (set-buffer wl-message-buffer)
    (w3m-toggle-inline-images arg)))
;;; emacs-w3m のマニュアルでは w3m-safe-toggle-inline-images と書かれているが
;;; これは廃止されて w3m-toggle-inline-images になっている．

(eval-after-load "wl-summary"
  '(define-key wl-summary-mode-map
     "\M-i" 'wl-summary-w3m-safe-toggle-inline-images))

