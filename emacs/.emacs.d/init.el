(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; list the packages
(setq package-list
      '(evil
        evil-collection
        evil-leader
        doom-modeline
        evil-terminal-cursor-changer
        highlight-indentation 
        visual-fill-column
        vterm
        helm))

;; activate all the packages
(package-initialize)

;; fetch the list of available packages  
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; customize save
(setq custom-file (concat user-emacs-directory "/custom.el"))
(when (file-exists-p custom-file)
  (load-file custom-file))

;; don't show startup buffer
(setq inhibit-startup-message t)

;; cycle through buffers whose name does not start with
;; an asterisk
(set-frame-parameter
 (selected-frame) 'buffer-predicate
 (lambda (buf)
   (not (string-match-p "^*" (buffer-name buf)))))

;; appearance
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(global-hl-line-mode t) 
(global-display-line-numbers-mode) 
(setq display-line-numbers-type 'relative) 
(setq column-number-mode t)
;;(global-visual-fill-column-mode)
(display-time)
(display-battery-mode)
(add-to-list
 'default-frame-alist '(font . "monospace:pixelsize=12"))
(load-theme 'grandshell)
;; evil-mode
(setq evil-want-keybinding nil)
(setq evil-want-integration t)
(global-evil-leader-mode)
(evil-mode t)
(setq evil-collection-setup-minibuffer t)
(evil-collection-init)

(evil-leader/set-leader ",")
(evil-leader/set-key
  "w" 'save-buffer
  "e" 'find-file
  "v" 'split-window-right
  "s" 'split-window-below
  "b" 'switch-to-buffer
  "k" 'kill-buffer
  "l" 'next-buffer
  "h" 'previous-buffer)

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

(add-hook 'vterm-mode-hook
          (lambda () (display-line-numbers-mode -1)))
