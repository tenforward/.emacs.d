(autoload 'po-mode "po-mode"
  "Major mode for translators to edit PO files" t)
(setq auto-mode-alist (cons '("\\.po\\'\\|\\.po\\." . po-mode)
			    auto-mode-alist))

(add-hook 'po-mode-hook
	  '(lambda ()
	     (setq fill-column 78)
	     (turn-on-auto-fill)
	    )
	  )
