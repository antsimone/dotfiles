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
(setq vc-follow-symblink t)
(fset 'yes-or-no-p 'y-or-n-p)

(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))
;; (helm-mode t)
;;(load-theme 'base16-black-metal-bathory) 
(load-theme 'modus-vivendi)
(setq-default indent-tabs-mode nil)


