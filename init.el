(add-to-list 'load-path "~/.emacs.d/lisp.d/")

(when (eq system-type 'darwin)
  (setq inhibit-splash-screen t)
  (defun cd-to-homedir-all-buffers ()
    "Change every current directory of all buffers to the home directory."
    (mapc
     (lambda (buf) (set-buffer buf) (cd (expand-file-name "~"))) (buffer-list)))
  (add-hook 'after-init-hook 'cd-to-homedir-all-buffers)
  )

;; ~/.emacs.d/init.d 以下にある *.el ファイルを読み込む
(let* ((dir "~/.emacs.d/site-start.d")
       (el-suffix "\\.el\\'")
       (files (mapcar
	       (lambda (path) (replace-regexp-in-string el-suffix "" path))
	       (directory-files dir t el-suffix))))
  (while files
    (load (car files))
    (setq files (cdr files))))

