;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Plamo Linux emacs ������ե����� (������ʬ)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;
;; ����Ķ�
;;

;;; ���ܸ�Ķ�
(set-language-environment "Japanese")
;(set-default-coding-systems 'euc-japan)
(set-default-coding-systems 'utf-8)

;;
;; ������
;;

;;; ��˥塼�С������ܸ�ˤ��ޤ�
;(setq menu-coding-system 'euc-japan)
;(if (equal (substring (concat (getenv "LANG") "__") 0 2) "ja")
;    (load "menu-tree"))

;;; Window �����ƥ�ǵ�ư�������
(if window-system
    (progn
      ;;; ���դ�
      (global-font-lock-mode 1)
      ;;; ��������С�
      (set-scroll-bar-mode 'right)
      ;;; Emacs21 �ʾ������ (�����ɬ�פ���? if ʸ�ϼ�ä�ñ�ʤ� progn ������Ƥ�褤����?)
      (when (>= emacs-major-version 21)
          (progn
            ;;; ������������Ǥ����ʤ�
            (blink-cursor-mode nil)
            ;;; ��������Ǥϥ�������ɽ���򤷤ʤ� (ư���Ƥʤ�?=>emacs23)
            ;(setq cursor-in-non-selected-windows nil)
            ;;; �ե���ȤΥ�������֥�򤷤ʤ� (ͭ��?=>emacs23
            ;(setq scalable-fonts-allowed nil)
            ;;; tool-bar ��ä�
            (tool-bar-mode 0)
            (menu-bar-mode 1)
            ;;; �ġ���С���shadow��margin������
            ;;; (�ǥե���Ȥˤ��Ƥ����ʤ���Mew�λ��ε�ư����:-P)
            ;(setq tool-bar-button-relief 3)
            ;(setq tool-bar-button-margin 1)
            ;;; �Դ֤�����
            ;(set-default 'line-spacing 1)
            ;;; �ۥ�����ޥ�����ͭ���ˤ���
            (mouse-wheel-mode)
            ;; ���߹Ԥ˿����դ���
            ;(global-hl-line-mode 1)
            ;(set-face-background 'hl-line "gray90")
            ;; Window ������
            (setq initial-frame-alist
                  (append (list
                           '(foreground-color . "Navy")
                           '(background-color . "CornSilk")
                           '(top . 50)
                           '(left . 100)
                           '(width . 100)
                           '(height . 40)
                           )))
            )) ; Emacs21 �ʾ������

      ;;; Emacs23 �ʾ������ (TrueType/OpenType �ե���Ȥλ���)
      (when (>= emacs-major-version 23)
          (progn
;           (set-default-font "Bitstream Vera Sans Mono-8")
;           (set-default-font "Inconsolata-9")
            (set-default-font "Aurulent Sans Mono-8")
            (set-fontset-font
             (frame-parameter nil 'font)
             'japanese-jisx0208
             '("�ҥ饮�δݥ� Pro" . "iso10646-1"))
;            '("�ҥ饮����ī Pro" . "iso10646-1"))
;            '("�ҥ饮�γѥ� Pro" . "iso10646-1"))
;            '("VL �����å�" . "iso10646-1"))
            (set-fontset-font
             (frame-parameter nil 'font)
             'japanese-jisx0212
;            '("�ҥ饮�δݥ� Pro" . "iso10646-1"))
             '("�ҥ饮����ī Pro" . "iso10646-1"))
;            '("�ҥ饮�γѥ� Pro" . "iso10646-1"))
;            '("VL �����å�" . "iso10646-1"))
            ;; Ascii �ե���Ȥ����ܸ�ե���Ȥ�����Ĵ������
;           (setq face-font-rescale-alist
;                 '((".*IPAex�����å�" . 1.3)
;                   (".*VL �����å�.*" . 1.3)
;                    (".*�ҥ饮��.*". 1.2)
;                   ("-cdac$" . 1.3)))
            )) ; Emacs23 �ʾ������

      )
;      )) ; Window �����ƥ�ǵ�ư�������

  ;;; mule/emacs -nw �ǵ�ư������������
  (progn
    ;;; ��˥塼�С���ä�
    ;(menu-bar-mode 0)
    ;;; ���դ�
    (global-font-lock-mode 1)
    ;;; ��������С���ɽ��
    (scroll-bar-mode 0)
    ))

;;; ���ơ������饤��˻��֤�ɽ������
(setq display-time-24hr-format t)
(setq display-time-format "%m/%d(%a) %R")
(setq display-time-day-and-date t)
(setq display-time-interval 30)
(display-time)

;(add-to-list 'default-frame-alist '(alpha . 80))

;;; white space, tab �βĻ벽
(require 'whitespace)
(setq whitespace-style '(face           ; face�ǲĻ벽
                         trailing       ; ����
                         tabs           ; ����
                         spaces         ; ���ڡ���
                         empty          ; ��Ƭ/�����ζ���
                         space-mark     ; ɽ���Υޥåԥ�
                         tab-mark
                         ))

(setq whitespace-display-mappings
      '((space-mark ?\u3000 [?\u25a1])
        ;; WARNING: the mapping below has a problem.
        ;; When a TAB occupies exactly one column, it will display the
        ;; character ?\xBB at that column followed by a TAB which goes to
        ;; the next TAB column.
        ;; If this is a problem for you, please, comment the line below.
        (tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))

;; ���ڡ��������ѤΤߤ�Ļ벽
(setq whitespace-space-regexp "\\(\u3000+\\)")

;; ��¸���˼�ư�ǥ��꡼�󥢥å�
;(setq whitespace-action '(auto-cleanup))

(global-whitespace-mode 1)

(set-face-attribute 'whitespace-trailing nil
                    :background "CornSilk"
                    :foreground "DeepPink"
                    :underline t)
(set-face-attribute 'whitespace-tab nil
                    :background "CornSilk"
                    :foreground "Gray80"
                    :underline t)
(set-face-attribute 'whitespace-space nil
                    :background "CornSilk"
                    :foreground "DarkSlateGray"
                    :weight 'bold)
(set-face-attribute 'whitespace-empty nil
                    :background "CornSilk")

; linum
(require 'linum)
(setq linum-format "%6d ")

