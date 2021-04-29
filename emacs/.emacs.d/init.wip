(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; activate all the packages
(package-initialize)

;; fetch the list of available packages
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(use-package evil
             :ensure t
             :init
             (setq evil-search-module 'evil-search)
             (setq evil-ex-complete-emacs-commands nil)
             (setq evil-vsplit-window-right t)
             (setq evil-split-window-below t)
             (setq evil-shift-round nil)
             (setq evil-want-C-u-scroll t)
             :config
             (evil-mode))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
