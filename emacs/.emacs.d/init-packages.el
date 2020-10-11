(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

; list the packages
(setq package-list '(evil evil-leader powerline-evil))

; activate all the packages
(package-initialize)

; fetch the list of available packages  
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
    (unless (package-installed-p package)
        (package-install package)))


