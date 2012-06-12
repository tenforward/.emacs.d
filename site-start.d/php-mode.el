(require 'php-mode)
(add-hook 'php-mode-user-hook 
          '(lambda () 
             (setq tab-width 2) 
             (setq indent-tabs-mode nil)) 
          )