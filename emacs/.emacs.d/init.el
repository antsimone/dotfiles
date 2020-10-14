(load "~/.emacs.d/init-pkg")
(load "~/.emacs.d/init-evil")

;; customize save
(setq custom-file (concat user-emacs-directory "/custom.el"))
(when (file-exists-p custom-file)
  (load-file custom-file))

;; don't show startup buffer
(setq inhibit-startup-message t)

;; cycle through buffers whose name does not start with an asterisk
(set-frame-parameter (selected-frame) 'buffer-predicate
                     (lambda (buf) (not (string-match-p "^*" (buffer-name buf)))))

;; appearance
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(set-frame-font "monospace:pixelsize=12")
(global-hl-line-mode t) 
(global-display-line-numbers-mode) 
(setq display-line-numbers-type 'relative) 

;; theme
(load-theme 'modus-vivendi)

;; tabs and spaces
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; backups, symlink and prompt
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq vc-follow-symblink t)
(fset 'yes-or-no-p 'y-or-n-p)

;; octave-mode
(add-to-list
 'auto-mode-alist
 '("\\.m$" . octave-mode))

;; vhdl-mode
(setq user-full-name "Antonio Simone")
(setq vhdl-basic-offset 4)
(setq vhdl-standard '(93 nil))
(setq vhdl-upper-case-attributes t)
(setq vhdl-upper-case-enum-values t)

