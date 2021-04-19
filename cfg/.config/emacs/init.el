(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; list the packages
(setq package-list
      '(evil
        evil-collection
        evil-leader
        evil-terminal-cursor-changer
        highlight-indentation
        visual-fill-column
        vterm
        org))

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

;; cycle through buffers whose name does not start with an asterisk
;; default-frame-alist fix emacsclient
(add-to-list
 'default-frame-alist
 '(buffer-predicate . (lambda (buf)
                        (not (string-match-p "^*" (buffer-name buf))))))

;; appearance
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
(setq column-number-mode t)

(display-time)
(display-battery-mode)

;;(global-visual-fill-column-mode)
;;(global-hl-line-mode t)
;;(set-face-background 'hl-line "#2b2b2b") ;
(set-face-attribute 'region nil :background "#ffffff" :foreground "#000000")

;; fonts for emacsclient
(add-to-list
 'default-frame-alist '(font . "monospace:size=12"))

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
(setq evil-want-fine-undo 'fine)

(require 'powerline-evil)
(powerline-evil-vim-theme)
(powerline-evil-vim-color-theme)

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

;; vhdl mode
(setq user-full-name "Antonio Simone"
      vhdl-basic-offset 4
      vhdl-standard '(93 nil)
      vhdl-upper-case-attributes t
      vhdl-upper-case-enum-values t)

;; customization for Verilog mode
(setq verilog-indent-level 4
      verilog-indent-level-module 4
      verilog-indent-level-declaration 4
      verilog-indent-level-behavioral 4
      verilog-indent-level-directive 1
      verilog-case-indent 2
      verilog-auto-newline t
      verilog-auto-indent-on-newline t
      verilog-tab-always-indent t
      verilog-auto-endcomments t
      verilog-highlight-grouping-keywords t
      verilog-highlight-modules t
      verilog-minimum-comment-distance 40
      verilog-indent-begin-after-if t
      verilog-auto-lineup '(all))

;; hook
(add-hook 'vterm-mode-hook
          (lambda () (display-line-numbers-mode -1)))
(add-hook 'python-mode-hook
          (lambda () (highlight-indentation-mode t)))
;; (dolist (hook '( *-mode-hook ...
;;                 ))
;;   (add-hook hook
;;             (lambda () ( )))

