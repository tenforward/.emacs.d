; ��ƣ���ꥸ�ʥ�
(require 'auto-install)
;; auto-install �ǥ��󥹥ȡ��뤵�줿 lisp �� load-path ���ɲá�
(add-to-list 'load-path auto-install-directory)
;; EmacsWiki �Υڡ���̾���䴰������ɲá�
;; (auto-install-update-emacswiki-package-name t)
;; install-elisp.el �ߴ��⡼�ɡ�
(auto-install-compatibility-setup)
;; ediff ��Ϣ�Хåե��� 1 �ĤΥե졼��ˤޤȤ��
(setq ediff-window-setup-function 'ediff-setup-window-plain)


;;; �ʲ���auto-install �ǥ��󥹥ȡ��뤷����Τ�ޤȤ��
(require 'open-junk-file)
(setq open-junk-file-format "~/junk/%Y-%m-%d-%H%M%S.")