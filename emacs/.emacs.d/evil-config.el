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
  "l" 'next-buffer
  "h" 'previous-buffer
  "k" 'kill-buffer)

;;(powerline-evil-vim-theme)
;;(powerline-evil-vim-color-theme)

(require 'doom-modeline)
(doom-modeline-mode 1)

