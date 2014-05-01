(require 'mozc)
(setq default-input-method "japanese-mozc")
(setq mozc-candidate-style 'overlay)

; meta-Space
;(global-set-key (kbd "M-SPC") 'toggle-input-method)
; Alt-Space
;(global-set-key (kbd "A-SPC") 'toggle-input-method)
; super-Space
(global-set-key (kbd "s-SPC") 'toggle-input-method)

(set-face-attribute 'mozc-cand-overlay-even-face 'nil
                    :background "LightGray" :foreground "navy")
(set-face-attribute 'mozc-cand-overlay-odd-face 'nil
                    :background "LightGray" :foreground "navy")
