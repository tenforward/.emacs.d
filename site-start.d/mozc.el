(require 'mozc)
(setq default-input-method "japanese-mozc")
(setq mozc-candidate-style 'overlay)

; meta-Space
(global-set-key (kbd "M-SPC") 'toggle-input-method)
; Alt-Space
;(global-set-key (kbd "A-SPC") 'toggle-input-method)
