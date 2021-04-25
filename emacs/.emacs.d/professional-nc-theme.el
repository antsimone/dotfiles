(deftheme professional-nc
  "Created 2021-04-25.")

(custom-theme-set-variables
 'professional-nc
 '(ansi-color-names-vector ["#000000" "#990000" "#339900" "#666633" "#0000C8" "#9933FF" "#666633" "#000000"]))

(custom-theme-set-faces
 'professional-nc
 '(cursor ((t (:background "red"))))
 '(region ((t (:background "grey"))))
 '(font-lock-builtin-face ((t (:foreground "#0000C8"))))
 '(font-lock-comment-face ((t (:foreground "#5180B3"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#5180B3"))))
 '(font-lock-function-name-face ((t (:foreground "#6600FF"))))
 '(font-lock-keyword-face ((t (:foreground "#0000C8"))))
 '(font-lock-string-face ((t (:foreground "#006600"))))
 '(font-lock-preprocessor-face ((t (:foreground "#993300"))))
 '(font-lock-type-face ((t (:foreground "#660000"))))
 '(font-lock-constant-face ((t (:foreground "#9933FF"))))
 '(font-lock-warning-face ((t (:foreground "red" :bold t))))
 '(font-lock-variable-name-face ((t (:foreground "#000000"))))
 '(font-lock-doc-face ((t (:foreground "#666633"))))
 '(isearch ((t (:foreground "#000000" :background "#FFFF00"))))
 '(lazy-highlight ((t (:foreground "#000000" :background "#FF8512"))))
 '(compilation-error ((t (:foreground "#FF0000" :bold t))))
 '(compilation-warning ((t (:foreground "#FF8512" :bold t))))
 '(compilation-info ((t (:foreground "#339900" :bold t))))
 '(show-paren-match ((t (:foreground "#000000" :background "#757575"))))
 '(show-paren-mismatch ((t (:inherit error))))
 '(error ((t (:foreground "red"))))
 '(trailing-whitespace ((t (:background "white" :bold t))))
 '(default ((t (:foreground "#000000" :background "#FFFFDD")))))

(provide-theme 'professional-nc)
