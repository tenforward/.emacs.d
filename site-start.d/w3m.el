;; Emacs-w3m

;; ��ư����
(require 'w3m-load)
(autoload 'w3m "w3m" "Interface for w3m on Emacs." t)
;;; �ǥե���Ȥǲ���ɽ��
(setq w3m-default-display-inline-images t)

;; Wanderlust �� html ɽ������ w3m ��Ȥ�
(require 'mime-w3m)

;;; �ɤ߹���ǰ����� URL
;(setq mime-w3m-safe-url-regexp "http\\:\\/\\/.*$") 
(setq mime-w3m-safe-url-regexp nil)

;;; wanderlust �Ǥϲ���ɽ���򤷤ʤ�
(setq mime-w3m-display-inline-images nil)

;; message buffer �ǡ�C-u M-i �ǡ�inline image ɽ��
;; �������Ȼפ��롢�᡼�������ɽ�����롣
(defun wl-summary-w3m-safe-toggle-inline-images (&optional arg)
  "Toggle displaying of all images in the message buffer.
If the prefix arg is given, all images are considered to be safe."
  (interactive "P")
  (save-excursion
    (set-buffer wl-message-buffer)
    (w3m-toggle-inline-images arg)))
;;; emacs-w3m �Υޥ˥奢��Ǥ� w3m-safe-toggle-inline-images �Ƚ񤫤�Ƥ��뤬
;;; ������ѻߤ���� w3m-toggle-inline-images �ˤʤäƤ��롥

(eval-after-load "wl-summary"
  '(define-key wl-summary-mode-map
     "\M-i" 'wl-summary-w3m-safe-toggle-inline-images))

