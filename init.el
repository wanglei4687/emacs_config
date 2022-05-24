(setq package-enable-at-startup nil)

(package-initialize)
;; always show line number (first-line-number is 1)
;; (global-linum-mode 1)

;; Bootstrap `use-package`
(unless
  (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
)

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
