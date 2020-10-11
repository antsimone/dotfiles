(load "~/.emacs.d/init-pkg")
(load "~/.emacs.d/init-evil")

(setq custom-file (concat user-emacs-directory "/custom.el"))
(when (file-exists-p custom-file)
    (load-file custom-file))

(setq inhibit-startup-message t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(set-frame-font "monospace:pixelsize=12")
(global-hl-line-mode t) 
(global-display-line-numbers-mode) 

(setq display-line-numbers-type 'relative) 
(setq make-backup-files nil)
(setq auto-save-default nil)
(fset 'yes-or-no-p 'y-or-n-p)

;(helm-mode t)

;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
