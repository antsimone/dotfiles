(deftheme solarized-zenburn-bg
  "Created 2021-04-26.")

(custom-theme-set-variables
 'solarized-zenburn-bg
 '(ansi-color-names-vector ["#4F4F4F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#6F6F6F"])
 '(compilation-message-face 'default)
 '(cua-normal-cursor-color "#DCDCCC")
 '(cua-read-only-cursor-color "#7F9F7F")
 '(cua-global-mark-cursor-color "#93E0E3")
 '(cua-overwrite-cursor-color "#F0DFAF")
 '(term-default-fg-color "#DCDCCC")
 '(term-default-bg-color "#3F3F3F"))

(custom-theme-set-faces
 'solarized-zenburn-bg
 '(button ((t (:underline t))))
 '(cursor ((((class color) (min-colors 89)) (:foreground "#3F3F3F" :background "#DCDCCC" :inverse-video t))))
 '(error ((((class color) (min-colors 89)) (:foreground "#DFAF8F"))))
 '(escape-glyph ((((class color) (min-colors 89)) (:foreground "#bbb0cb"))))
 '(header-line ((((class color) (min-colors 89)) (:inverse-video unspecified :overline nil :underline "#4F4F4F" :foreground "#DCDCCC" :background "#3F3F3F" :box (:line-width 2 :color "#3F3F3F" :style unspecified)))))
 '(highlight ((((class color) (min-colors 89)) (:background "#4F4F4F"))))
 '(lazy-highlight ((((class color) (min-colors 89)) (:foreground "#3F3F3F" :background "#F0DFAF" :weight normal))))
 '(link ((((class color) (min-colors 89)) (:foreground "#F0DFAF" :underline t :weight bold))))
 '(link-visited ((((class color) (min-colors 89)) (:foreground "#F0DFAF" :underline t :weight normal))))
 '(match ((((class color) (min-colors 89)) (:background "#4F4F4F" :foreground "#FFFFEF" :weight bold))))
 '(menu ((((class color) (min-colors 89)) (:foreground "#DCDCCC" :background "#3F3F3F"))))
 '(minibuffer-prompt ((((class color) (min-colors 89)) (:foreground "#DCDCCC"))))
 '(mode-line ((((class color) (min-colors 89)) (:inverse-video unspecified :overline "#4F4F4F" :underline "#284b54" :foreground "#DCDCCC" :background "#4F4F4F" :box (:line-width 1 :color "#4F4F4F" :style unspecified)))))
 '(mode-line-buffer-id ((((class color) (min-colors 89)) (:foreground "#FFFFEF" :weight bold))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:inverse-video unspecified :overline "#4F4F4F" :underline "#284b54" :foreground "#878777" :background "#3F3F3F" :box (:line-width 1 :color "#3F3F3F" :style unspecified)))))
 '(region ((((class color) (min-colors 89)) (:extend t :foreground "#3F3F3F" :background "#FFFFEF"))))
 '(secondary-selection ((((class color) (min-colors 89)) (:extend t :background "#4F4F4F"))))
 '(shadow ((((class color) (min-colors 89)) (:foreground "#878777"))))
 '(success ((((class color) (min-colors 89)) (:foreground "#7F9F7F"))))
 '(trailing-whitespace ((((class color) (min-colors 89)) (:background "#CC9393"))))
 '(vertical-border ((((class color) (min-colors 89)) (:foreground "#284b54"))))
 '(warning ((((class color) (min-colors 89)) (:foreground "#F0DFAF"))))
 '(next-error ((((class color) (min-colors 89)) (:foreground "#e2b5d2" :background "#705467" :weight normal))))
 '(compilation-column-number ((((class color) (min-colors 89)) (:inherit font-lock-doc-face :foreground "#93E0E3" :underline nil))))
 '(compilation-error ((((class color) (min-colors 89)) (:inherit error :underline nil))))
 '(compilation-info ((((class color) (min-colors 89)) (:foreground "#878777" :underline nil :bold nil))))
 '(compilation-line-number ((((class color) (min-colors 89)) (:foreground "#7F9F7F" :underline nil))))
 '(compilation-warning ((((class color) (min-colors 89)) (:inherit warning :underline nil))))
 '(compilation-mode-line-exit ((((class color) (min-colors 89)) (:foreground unspecified :weight bold))))
 '(compilation-mode-line-fail ((((class color) (min-colors 89)) (:inherit compilation-error :foreground "#CC9393" :weight bold))))
 '(compilation-mode-line-run ((((class color) (min-colors 89)) (:foreground "#DFAF8F" :weight bold))))
 '(completions-annotations ((t (:foreground "#878777"))))
 '(cua-global-mark ((((class color) (min-colors 89)) (:background "#F0DFAF" :foreground "#3F3F3F"))))
 '(cua-rectangle ((((class color) (min-colors 89)) (:inherit region :background "#DC8CC3" :foreground "#3F3F3F"))))
 '(cua-rectangle-noselect ((((class color) (min-colors 89)) (:inherit region :background "#4F4F4F" :foreground "#878777"))))
 '(diary ((((class color) (min-colors 89)) (:foreground "#F0DFAF"))))
 '(dired-directory ((((class color) (min-colors 89)) (:foreground "#8CD0D3" :weight normal))))
 '(dired-flagged ((((class color) (min-colors 89)) (:foreground "#CC9393"))))
 '(dired-header ((((class color) (min-colors 89)) (:foreground "#3F3F3F" :background "#8CD0D3"))))
 '(dired-ignored ((((class color) (min-colors 89)) (:inherit shadow))))
 '(dired-mark ((((class color) (min-colors 89)) (:foreground "#F0DFAF" :weight bold))))
 '(dired-marked ((((class color) (min-colors 89)) (:foreground "#DC8CC3" :weight bold))))
 '(dired-perm-write ((((class color) (min-colors 89)) (:foreground "#DCDCCC" :underline t))))
 '(dired-symlink ((t (:foreground "#93E0E3" :slant normal :weight normal))))
 '(dired-warning ((((class color) (min-colors 89)) (:foreground "#DFAF8F" :underline t))))
 '(fill-column-indicator ((((class color) (min-colors 89)) :foreground "#4F4F4F" :weight semilight)))
 '(isearch ((((class color) (min-colors 89)) (:foreground "#3F3F3F" :background "#DC8CC3" :weight normal))))
 '(isearch-fail ((((class color) (min-colors 89)) (:foreground "#CC9393" :background "#3F3F3F" :bold t))))
 '(widget-field ((((class color) (min-colors 89)) (:background "#4F4F4F"))))
 '(font-lock-builtin-face ((((class color) (min-colors 89)) (:foreground "#DCDCCC" :weight bold :slant normal))))
 '(font-lock-comment-face ((t (:foreground "#878777"))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:foreground "#8CD0D3" :weight bold))))
 '(font-lock-doc-face ((((class color) (min-colors 89)) (:foreground "#93E0E3" :slant normal))))
 '(font-lock-function-name-face ((((class color) (min-colors 89)) (:foreground "#8CD0D3"))))
 '(font-lock-keyword-face ((((class color) (min-colors 89)) (:foreground "#7F9F7F" :weight bold))))
 '(font-lock-negation-char-face ((((class color) (min-colors 89)) (:foreground "#F0DFAF" :weight bold))))
 '(font-lock-preprocessor-face ((((class color) (min-colors 89)) (:foreground "#8CD0D3"))))
 '(font-lock-regexp-grouping-construct ((((class color) (min-colors 89)) (:foreground "#F0DFAF" :weight bold))))
 '(font-lock-regexp-grouping-backslash ((((class color) (min-colors 89)) (:foreground "#7F9F7F" :weight bold))))
 '(font-lock-string-face ((((class color) (min-colors 89)) (:foreground "#93E0E3"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:foreground "#F0DFAF"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:foreground "#8CD0D3"))))
 '(font-lock-warning-face ((((class color) (min-colors 89)) (:inherit error :weight bold))))
 '(custom-face-tag ((((class color) (min-colors 89)) (:inherit variable-pitch :height 1.2 :foreground "#bbb0cb" :weight normal))))
 '(custom-variable-tag ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#93E0E3" :height 1.2))))
 '(custom-comment-tag ((((class color) (min-colors 89)) (:foreground "#878777"))))
 '(custom-group-tag ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#8CD0D3" :height 1.2))))
 '(custom-group-tag-1 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#CC9393" :height 1.2))))
 '(custom-state ((((class color) (min-colors 89)) (:foreground "#7F9F7F"))))
 '(custom-button ((((class color) (min-colors 89)) (:background "#4F4F4F" :foreground "#FFFFEF" :box (:line-width 2 :style released-button)))))
 '(custom-button-mouse ((((class color) (min-colors 89)) (:background "#878777" :foreground "#4F4F4F" :box (:line-width 2 :style released-button)))))
 '(custom-button-pressed ((((class color) (min-colors 89)) (:background "#878777" :foreground "#FFFFEF" :box (:line-width 2 :style pressed-button)))))
 '(custom-button-unraised ((((class color) (min-colors 89)) (:inherit underline))))
 '(custom-button-pressed-unraised ((((class color) (min-colors 89)) (:inherit custom-button-unraised :foreground "#DC8CC3"))))
 '(diff-added ((((class color) (min-colors 89)) (:background "#464a46" :foreground "#a2b8a1"))))
 '(diff-changed ((t nil)))
 '(diff-removed ((((class color) (min-colors 89)) (:background "#504948" :foreground "#dab0af"))))
 '(diff-refine-added ((((class color) (min-colors 89)) (:background "#4f5a4e" :foreground "#acbeab"))))
 '(diff-refine-changed ((((class color) (min-colors 89)) (:background "#556c6c" :foreground "#b7dada"))))
 '(diff-refine-removed ((((class color) (min-colors 89)) (:background "#6b5656" :foreground "#d9b8b6"))))
 '(diff-header ((t (:background "#4F4F4F"))))
 '(diff-file-header ((((class color) (min-colors 89)) (:background "#3F3F3F" :foreground "#DCDCCC" :weight bold))))
 '(diff-context ((((class color) (min-colors 89)) :foreground "#DCDCCC")))
 '(diff-indicator-added ((t (:foreground "#7F9F7F"))))
 '(diff-indicator-changed ((t (:foreground "#8CD0D3"))))
 '(diff-indicator-removed ((t (:foreground "#CC9393"))))
 '(epa-mark ((((class color) (min-colors 89)) (:foreground "#DC8CC3" :weight bold))))
 '(epa-string ((((class color) (min-colors 89)) (:foreground "#bbb0cb"))))
 '(epa-validity-disabled ((((class color) (min-colors 89)) (:inverse-video t :slant italic))))
 '(epa-validity-high ((((class color) (min-colors 89)) (:weight bold))))
 '(epa-validity-low ((((class color) (min-colors 89)) (:slant italic))))
 '(epa-validity-medium ((((class color) (min-colors 89)) (:slant italic))))
 '(flyspell-duplicate ((((supports :underline (:style wave)) (class color) (min-colors 89)) (:underline (:style wave :color "#F0DFAF") :inherit unspecified)) (((class color) (min-colors 89)) (:foreground "#F0DFAF" :weight bold :underline t))))
 '(flyspell-incorrect ((((supports :underline (:style wave)) (class color) (min-colors 89)) (:underline (:style wave :color "#CC9393") :inherit unspecified)) (((class color) (min-colors 89)) (:foreground "#CC9393" :weight bold :underline t))))
 '(gnus-group-mail-1 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-mail-1-empty))))
 '(gnus-group-mail-1-empty ((((class color) (min-colors 89)) (:inherit gnus-group-news-1-empty))))
 '(gnus-group-mail-2 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-mail-2-empty))))
 '(gnus-group-mail-2-empty ((((class color) (min-colors 89)) (:inherit gnus-group-news-2-empty))))
 '(gnus-group-mail-3 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-mail-3-empty))))
 '(gnus-group-mail-3-empty ((((class color) (min-colors 89)) (:inherit gnus-group-news-3-empty))))
 '(gnus-group-mail-low ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-mail-low-empty))))
 '(gnus-group-mail-low-empty ((((class color) (min-colors 89)) (:inherit gnus-group-news-low-empty))))
 '(gnus-group-news-1 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-news-1-empty))))
 '(gnus-group-news-2 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-news-2-empty))))
 '(gnus-group-news-3 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-news-3-empty))))
 '(gnus-group-news-4 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-news-4-empty))))
 '(gnus-group-news-5 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-news-5-empty))))
 '(gnus-group-news-6 ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-news-6-empty))))
 '(gnus-group-news-low ((((class color) (min-colors 89)) (:weight bold :inherit gnus-group-news-low-empty))))
 '(gnus-summary-cancelled ((((class color) (min-colors 89)) (:foreground "#DFAF8F"))))
 '(gnus-summary-high-ancient ((((class color) (min-colors 89)) (:foreground "#8CD0D3" :weight bold))))
 '(gnus-summary-high-read ((((class color) (min-colors 89)) (:foreground "#7F9F7F" :weight bold))))
 '(gnus-summary-high-ticked ((((class color) (min-colors 89)) (:foreground "#DFAF8F" :weight bold))))
 '(gnus-summary-high-unread ((((class color) (min-colors 89)) (:foreground "#DCDCCC" :weight bold))))
 '(gnus-summary-low-ancient ((((class color) (min-colors 89)) (:foreground "#8CD0D3"))))
 '(gnus-summary-low-read ((t (:foreground "#7F9F7F"))))
 '(gnus-summary-low-ticked ((((class color) (min-colors 89)) (:foreground "#DFAF8F"))))
 '(gnus-summary-low-unread ((((class color) (min-colors 89)) (:foreground "#DCDCCC"))))
 '(gnus-summary-normal-ancient ((((class color) (min-colors 89)) (:foreground "#8CD0D3"))))
 '(gnus-summary-normal-read ((((class color) (min-colors 89)) (:foreground "#7F9F7F"))))
 '(gnus-summary-normal-ticked ((((class color) (min-colors 89)) (:foreground "#DFAF8F"))))
 '(gnus-summary-normal-unread ((((class color) (min-colors 89)) (:foreground "#DCDCCC"))))
 '(gnus-summary-selected ((((class color) (min-colors 89)) (:foreground "#F0DFAF" :weight bold))))
 '(gnus-group-news-1-empty ((((class color) (min-colors 89)) (:foreground "#F0DFAF"))))
 '(gnus-group-news-2-empty ((((class color) (min-colors 89)) (:foreground "#7F9F7F"))))
 '(gnus-group-news-3-empty ((((class color) (min-colors 89)) (:foreground "#7F9F7F"))))
 '(gnus-group-news-4-empty ((((class color) (min-colors 89)) (:foreground "#8CD0D3"))))
 '(gnus-group-news-5-empty ((((class color) (min-colors 89)) (:foreground "#8CD0D3"))))
 '(gnus-group-news-6-empty ((((class color) (min-colors 89)) (:foreground "#57a2a4"))))
 '(gnus-group-news-low-empty ((((class color) (min-colors 89)) (:foreground "#878777"))))
 '(info-title-1 ((((class color) (min-colors 89)) (:foreground "#FFFFEF" :weight bold))))
 '(info-title-2 ((((class color) (min-colors 89)) (:foreground "#FFFFEF" :weight bold))))
 '(info-title-3 ((((class color) (min-colors 89)) (:weight bold))))
 '(info-title-4 ((((class color) (min-colors 89)) (:weight bold))))
 '(info-node ((((class color) (min-colors 89)) (:foreground "#FFFFEF" :slant italic :weight bold))))
 '(info-header-node ((((class color) (min-colors 89)) (:inherit info-node))))
 '(info-header-xref ((((class color) (min-colors 89)) (:inherit info-xref))))
 '(info-index-match ((((class color) (min-colors 89)) (:inherit match))))
 '(info-menu-header ((((class color) (min-colors 89)) (:inherit variable-pitch :weight bold))))
 '(info-menu-star ((((class color) (min-colors 89)) (:foreground "#DFAF8F"))))
 '(info-xref ((((class color) (min-colors 89)) (:inherit link))))
 '(info-xref-visited ((((class color) (min-colors 89)) (:inherit (link-visited info-xref)))))
 '(message-cited-text-1 ((((class color) (min-colors 89)) (:foreground "#878777"))))
 '(message-header-name ((((class color) (min-colors 89)) (:foreground "#878777"))))
 '(message-header-other ((((class color) (min-colors 89)) (:foreground "#DCDCCC" :weight normal))))
 '(message-header-to ((((class color) (min-colors 89)) (:foreground "#DCDCCC" :weight normal))))
 '(message-header-cc ((((class color) (min-colors 89)) (:foreground "#DCDCCC" :weight normal))))
 '(message-header-newsgroups ((((class color) (min-colors 89)) (:foreground "#F0DFAF" :weight bold))))
 '(message-header-subject ((((class color) (min-colors 89)) (:foreground "#93E0E3" :weight normal))))
 '(message-header-xheader ((((class color) (min-colors 89)) (:foreground "#93E0E3"))))
 '(message-mml ((((class color) (min-colors 89)) (:foreground "#F0DFAF" :weight bold))))
 '(message-separator ((((class color) (min-colors 89)) (:foreground "#878777" :slant italic))))
 '(org-agenda-structure ((((class color) (min-colors 89)) (:foreground "#FFFFEF" :background "#4F4F4F" :weight bold :slant normal :inverse-video nil :height 1.1 :underline nil :box (:line-width 2 :color "#3F3F3F")))))
 '(org-agenda-calendar-event ((((class color) (min-colors 89)) (:foreground "#FFFFEF"))))
 '(org-agenda-calendar-sexp ((((class color) (min-colors 89)) (:foreground "#DCDCCC" :slant italic))))
 '(org-agenda-date ((((class color) (min-colors 89)) (:foreground "#878777" :background "#3F3F3F" :weight normal :box (:line-width 2 :color "#3F3F3F") :inverse-video nil :overline nil :slant normal :height 1.0))))
 '(org-agenda-date-weekend ((((class color) (min-colors 89)) (:inherit org-agenda-date :inverse-video nil :background unspecified :foreground "#878777" :weight unspecified :underline t :overline nil :box unspecified))))
 '(org-agenda-date-today ((((class color) (min-colors 89)) (:inherit org-agenda-date :inverse-video t :weight bold :underline unspecified :overline nil :box unspecified :foreground "#8CD0D3" :background "#3F3F3F"))))
 '(org-agenda-done ((((class color) (min-colors 89)) (:foreground "#878777" :slant italic))))
 '(org-archived ((((class color) (min-colors 89)) (:foreground "#878777" :weight normal))))
 '(org-block ((((class color) (min-colors 89)) nil)))
 '(org-block-begin-line ((((class color) (min-colors 89)) (:inherit org-meta-line :underline t))))
 '(org-block-end-line ((((class color) (min-colors 89)) (:inherit org-meta-line :overline t))))
 '(org-checkbox ((((class color) (min-colors 89)) (:background "#3F3F3F" :foreground "#DCDCCC" :box (:line-width 1 :style released-button)))))
 '(org-code ((((class color) (min-colors 89)) (:foreground "#878777"))))
 '(org-date ((((class color) (min-colors 89)) (:foreground "#8CD0D3" :underline t))))
 '(org-done ((((class color) (min-colors 89)) (:weight bold :foreground "#7F9F7F"))))
 '(org-ellipsis ((((class color) (min-colors 89)) (:foreground "#878777"))))
 '(org-formula ((((class color) (min-colors 89)) (:foreground "#F0DFAF"))))
 '(org-headline-done ((((class color) (min-colors 89)) (:foreground "#7F9F7F"))))
 '(org-hide ((((class color) (min-colors 89)) (:foreground "#3F3F3F"))))
 '(org-level-1 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#DFAF8F" :height 1.3))))
 '(org-level-2 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#7F9F7F" :height 1.2))))
 '(org-level-3 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#8CD0D3" :height 1.15))))
 '(org-level-4 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#F0DFAF" :height 1.1))))
 '(org-level-5 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#93E0E3"))))
 '(org-level-6 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#7F9F7F"))))
 '(org-level-7 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#CC9393"))))
 '(org-level-8 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#8CD0D3"))))
 '(org-link ((((class color) (min-colors 89)) (:inherit link))))
 '(org-meta-line ((((class color) (min-colors 89)) (:foreground "#878777" :slant italic))))
 '(org-macro ((((class color) (min-colors 89)) (:foreground "#FFFFEF"))))
 '(org-sexp-date ((((class color) (min-colors 89)) (:foreground "#bbb0cb"))))
 '(org-scheduled ((((class color) (min-colors 89)) (:foreground "#7F9F7F"))))
 '(org-scheduled-previously ((((class color) (min-colors 89)) (:foreground "#93E0E3"))))
 '(org-scheduled-today ((((class color) (min-colors 89)) (:foreground "#8CD0D3" :weight normal))))
 '(org-special-keyword ((((class color) (min-colors 89)) (:foreground "#878777" :weight bold))))
 '(org-table ((((class color) (min-colors 89)) (:foreground "#7F9F7F"))))
 '(org-tag ((((class color) (min-colors 89)) (:weight bold))))
 '(org-time-grid ((((class color) (min-colors 89)) (:foreground "#878777"))))
 '(org-todo ((((class color) (min-colors 89)) (:foreground "#93E0E3" :weight bold))))
 '(org-upcoming-deadline ((((class color) (min-colors 89)) (:foreground "#F0DFAF" :weight normal :underline nil))))
 '(org-warning ((((class color) (min-colors 89)) (:foreground "#DFAF8F" :weight normal :underline nil))))
 '(org-agenda-dimmed-todo-face ((((class color) (min-colors 89)) (:foreground "#878777"))))
 '(org-agenda-restriction-lock ((((class color) (min-colors 89)) (:background "#F0DFAF"))))
 '(org-clock-overlay ((((class color) (min-colors 89)) (:background "#4F4F4F"))))
 '(org-column ((((class color) (min-colors 89)) (:background "#4F4F4F" :strike-through nil :underline nil :slant normal :weight normal :inherit default))))
 '(org-column-title ((((class color) (min-colors 89)) (:background "#4F4F4F" :underline t :weight bold))))
 '(org-date-selected ((((class color) (min-colors 89)) (:foreground "#CC9393" :inverse-video t))))
 '(org-document-info ((((class color) (min-colors 89)) (:foreground "#DCDCCC"))))
 '(org-document-title ((((class color) (min-colors 89)) (:foreground "#FFFFEF" :weight bold :height 1.3))))
 '(org-drawer ((((class color) (min-colors 89)) (:foreground "#93E0E3"))))
 '(org-footnote ((((class color) (min-colors 89)) (:foreground "#DC8CC3" :underline t))))
 '(org-mode-line-clock-overrun ((((class color) (min-colors 89)) (:inherit mode-line :background "#CC9393"))))
 '(outline-1 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#DFAF8F" :height 1.3))))
 '(outline-2 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#7F9F7F" :height 1.2))))
 '(outline-3 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#8CD0D3" :height 1.15))))
 '(outline-4 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#F0DFAF" :height 1.1))))
 '(outline-5 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#93E0E3"))))
 '(outline-6 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#7F9F7F"))))
 '(outline-7 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#CC9393"))))
 '(outline-8 ((((class color) (min-colors 89)) (:inherit variable-pitch :foreground "#8CD0D3"))))
 '(show-paren-match ((((class color) (min-colors 89)) (:foreground "#DC8CC3" :background unspecified :weight bold))))
 '(show-paren-mismatch ((((class color) (min-colors 89)) (:foreground "#4F4F4F" :background "#CC9393" :weight bold))))
 '(term ((t (:background "#3F3F3F" :foreground "#DCDCCC"))))
 '(term-color-black ((t (:foreground "#4F4F4F" :background "#4F4F4F"))))
 '(term-color-red ((t (:foreground "#CC9393" :background "#CC9393"))))
 '(term-color-green ((t (:foreground "#7F9F7F" :background "#7F9F7F"))))
 '(term-color-yellow ((t (:foreground "#F0DFAF" :background "#F0DFAF"))))
 '(term-color-blue ((t (:foreground "#8CD0D3" :background "#8CD0D3"))))
 '(term-color-magenta ((t (:foreground "#DC8CC3" :background "#DC8CC3"))))
 '(term-color-cyan ((t (:foreground "#93E0E3" :background "#93E0E3"))))
 '(term-color-white ((t (:foreground "#fffff6" :background "#fffff6"))))
 '(tooltip ((((class color) (min-colors 89)) (:background "#55524c" :foreground "#f2e6c3" :inherit variable-pitch))))
 '(default ((t (:background "black" :foreground "#bebebe")))))

(provide-theme 'solarized-zenburn-bg)
