;;; ibus.el ���� (contrib/emacs �ʲ��ˤ���ޤ�)
;;;   http://www11.atwiki.jp/s-irie/pages/21.html
(require 'ibus)
(add-hook 'after-init-hook 'ibus-mode-on)

;; Ctrl-Space �� Set Mark �˻���
(ibus-define-common-key ?\C-\s nil)
;; 
(setq ibus-cursor-color '("red" "blue" "limegreen"))
;; ibus �Υ��󡦥��դΥ��������
; Ctrl-\
(global-set-key (kbd "C-\\") 'ibus-toggle)
; meta-Space
(global-set-key (kbd "M-SPC") 'ibus-toggle)
; Alt-Space
;(global-set-key (kbd "A-SPC") 'ibus-toggle)
