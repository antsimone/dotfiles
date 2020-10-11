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
  "b" 'switch-to-buffer
  "k" 'kill-buffer)

(powerline-evil-vim-theme)
(powerline-evil-vim-color-theme)
