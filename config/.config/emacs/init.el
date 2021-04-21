(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; list the packages
(setq package-list
      '(evil
         evil-collection
         evil-leader
         evil-terminal-cursor-changer
         powerline-evil
         ;;autumn-light-theme
         highlight-indentation
         visual-fill-column
         vterm
         org
         org-bullets))

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

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
(setq column-number-mode t)

(custom-set-variables
  '(line-number ((t (:slant normal)))))

(display-time)
(display-battery-mode)

;; fill-paragraph M-q
(setq-default fill-column 100)
;;(global-visual-fill-column-mode)

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
  "TAB" 'switch-to-buffer
  "b" 'list-buffers
  "k" 'kill-buffer
  "l" 'next-buffer
  "h" 'previous-buffer)

(setq evil-want-fine-undo 'fine)

;;(powerline-evil-vim-color-theme)

;; fonts for emacsclient
(add-to-list
  'default-frame-alist '(font . "monospace:pixelsize=12"))
(set-window-margins nil 0)

;; theme
(load-theme 'wheat t)
(enable-theme 'wheat)

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

(add-hook 'org-mode-hook
          (lambda () (org-bullets-mode t)))
(add-hook 'vterm-mode-hook
          (lambda () (display-line-numbers-mode -1)))
(add-hook 'python-mode-hook
          (lambda () (highlight-indentation-mode t)))
