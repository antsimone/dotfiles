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

(powerline-evil-vim-theme)
(powerline-evil-vim-color-theme)

(eval-after-load "evil"
  '(progn
     (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
     (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
     (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
     (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)))
