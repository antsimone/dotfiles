(load "~/.emacs.d/pkg-config.el")
(load "~/.emacs.d/evil-config.el")

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
(setq column-number-mode t)
(display-time)
(display-battery-mode)

;; modeline
(require 'doom-modeline)
(doom-modeline-mode 1)
(setq doom-modeline-height 12)
(setq doom-modeline-bar-width 6)
(setq doom-modeline-window-width-limit fill-column)
(setq doom-modeline-icon nil)
(setq doom-modeline-unicode-fallback nil)
(setq doom-modeline-minor-modes nil)
(setq doom-modeline-buffer-encoding nil)
(setq doom-modeline-buffer-file-name-style 'auto)
(setq doom-modeline-indent-info nil)

;; theme
(load-theme 'modus-vivendi)

;; tabs and spaces
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(highlight-indentation-mode t)

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

