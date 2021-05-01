;;; Package install

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
;; list the packages TODO refactor use-package
(setq package-list
      '(evil
        evil-collection
        evil-leader
        evil-terminal-cursor-changer
        org-bullets
        org-beautify-theme
        vterm
        magit
        doom-themes
        alect-themes
        modus-themes
        highlight-indentation))

;; activate all the packages

(package-initialize)

;; fetch the list of available packages
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;;; Custom ld

(setq custom-file (concat user-emacs-directory "/custom.el"))
(when (file-exists-p custom-file)
  (load-file custom-file))

;;; Custom frame

(setq inhibit-startup-message t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(global-display-line-numbers-mode)
;;(global-display-fill-column-indicator-mode)
(setq display-line-numbers-type 'relative)
(setq column-number-mode t)

(display-time)
(display-battery-mode)

(set-window-margins nil 0)

(add-to-list
 'default-frame-alist '(font . "Monospace-9"))

;;; Utils

;; cycle through buffers whose name does not start with an asterisk
;; default-frame-alist fix emacsclient
(add-to-list
 'default-frame-alist
 '(buffer-predicate . (lambda (buf)
                        (not (string-match-p "^*" (buffer-name buf))))))

;; tabs and spaces
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

                                        ; Backups, symlink and prompt
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)
(setq vc-follow-symblink t)
(fset 'yes-or-no-p 'y-or-n-p)

;; fill-paragraph
(setq-default fill-column 100)

;;; Evil

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
  "c" 'kill-buffer-and-window
  "q" 'delete-window
  "l" 'next-buffer
  "h" 'previous-buffer)

(setq evil-want-fine-undo 'fine)

;;; Octave-mode

(add-to-list
 'auto-mode-alist
 '("\\.m$" . octave-mode))

;;; VHDL mode

(setq user-full-name "Antonio Simone"
      vhdl-basic-offset 4
      vhdl-standard '(93 nil)
      vhdl-upper-case-attributes t
      vhdl-upper-case-enum-values t)


;;; Hooks

(add-hook 'org-mode-hook
          (lambda () (org-bullets-mode t)))
(add-hook 'vterm-mode-hook
          (lambda () (display-line-numbers-mode -1)))
(add-hook 'python-mode-hook
          (lambda () (highlight-indentation-mode t)))

;;; Org

(setq org-log-done t)

;;; Themes

(load-theme 'modus-vivendi t)

(add-to-list
 'initial-frame-alist '(background-color . "#121212"))
(add-to-list
 'default-frame-alist '(background-color . "#121212"))

(setq themes '(alect-light doom-vibrant))
(setq themes-index 0)

(defun cycle-theme ()
  (interactive)
  (setq themes-index (% (1+ themes-index) (length themes)))
  (load-indexed-theme))

(defun load-indexed-theme ()
  (try-load-theme (nth themes-index themes)))

(defun try-load-theme (theme)
  (if (ignore-errors (load-theme theme :no-confirm))
      (mapcar #'disable-theme (remove theme custom-enabled-themes))
    (message "Unable to find theme file for ‘%s’" theme)))
