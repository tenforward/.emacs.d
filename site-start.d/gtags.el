(require 'gtags)

;; �ѥ���ɽ���⡼�ɤ����Хѥ���
(setq gtags-path-style 'relative)

;; ��������������ɤ߹������Ѥ�
(setq view-read-only t)
(setq gtags-read-only t)

(setq gtags-mode-hook
      '(lambda ()
         (local-set-key "\M-t" 'gtags-find-tag)
         (local-set-key "\M-r" 'gtags-find-rtag)
         (local-set-key "\M-s" 'gtags-find-symbol)
         (local-set-key "\C-t" 'gtags-pop-stack)
         ))