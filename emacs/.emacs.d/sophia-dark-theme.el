(deftheme sophia-dark
  "Created 2021-04-27.")

(custom-theme-set-faces
 'sophia-dark
 '(default ((t (:inherit nil :extend nil :stipple nil :background "black" :foreground "#DCDCDC" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "BE5N" :family "Iosevka"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((t (:weight bold :foreground "#F0DFAF"))))
 '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:foreground "#F0DFAF"))))
 '(highlight ((t (:background "#494949"))))
 '(region ((t (:extend t :background "white" :foreground "black"))))
 '(secondary-selection ((t (:extend t :background "#494949"))))
 '(trailing-whitespace ((t (:background "#fb4934" :foreground "#ebdbb2" :inverse-video nil))))
 '(font-lock-builtin-face ((t (:weight bold :foreground "#DCDCDC"))))
 '(font-lock-comment-face ((t (:foreground "#83c07c"))))
 '(font-lock-constant-face ((t (:foreground "#d3869b"))))
 '(font-lock-doc-face ((t (:foreground "#9FC59F"))))
 '(font-lock-function-name-face ((t (:foreground "#8ec07c"))))
 '(font-lock-keyword-face ((t (:foreground "#fabd2f" :weight bold))))
 '(font-lock-preprocessor-face ((t (:inherit nil :foreground "#57df77"))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#8CD0D3" :inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "#8CD0D3" :inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "#CC9393"))))
 '(font-lock-type-face ((t (:foreground "#87ffaf"))))
 '(font-lock-warning-face ((t (:foreground "#Ffd7d7"))))
 '(button ((t (:inherit (link)))))
 '(link ((t (:weight bold :underline (:color foreground-color :style line) :foreground "#D0BF8F"))))
 '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground "magenta4")) (((class color) (background dark)) (:foreground "violet"))))
 '(header-line ((t (:foreground "#DCDCDC" :background "#3F3F3F"))))
 '(tooltip ((t (:foreground "#DCDCDC" :background "#4F4F4F"))))
 '(mode-line ((t (:foreground "#8FB28F" :background "#2B2B2B"))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:foreground "#8CD0D3"))))
 '(mode-line-highlight ((t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:foreground "#5F7F5F"))))
 '(isearch ((t (:inverse-video t :weight bold))))
 '(isearch-fail ((t (:background "#cc241d" :foreground "#ebdbb2"))))
 '(lazy-highlight ((t (:background "burlywood3" :foreground "black" :weight bold))))
 '(match ((t (:background "#fabd2f" :foreground "black" :weight bold))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch))))))

(provide-theme 'sophia-dark)
