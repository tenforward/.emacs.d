(require 'autoinsert)
(setq auto-insert-directory "~/template/")
(setq auto-insert-alist
      (nconc '(("\\.tex$" . "template.tex")
                ) auto-insert-alist))
(add-hook 'find-file-not-found-hooks 'auto-insert)