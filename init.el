(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives
             '("ublt" .  "https://elpa.ubolonton.org/packages/") t)

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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(minibuf-isearch magit-libgit libgit forge prodigy vertico consult marginalia ctrlf vterm zygospore yasnippet-snippets yaml-mode yaml ws-butler which-key web-mode undo-tree typescript-mode treepy treemacs-projectile treemacs-persp treemacs-magit treemacs-icons-dired treemacs-evil treemacs-all-the-icons toml-mode smartparens sass-mode rainbow-identifiers rainbow-delimiters racer quelpa-use-package origami org-bullets orderless objed multiple-cursors lsp-ui loccur json-mode js2-mode ivy-yasnippet hungry-delete highlight-indentation highlight-indent-guides helm-projectile helm-ag goto-line-preview goto-last-change golden-ratio go-mode git-timemachine git-messenger form-feed flycheck-rust flycheck-irony flycheck-golangci-lint fish-mode fancy-narrow emmet-mode editorconfig doom-themes doom-modeline dockerfile-mode dired-sidebar dired-k diminish default-text-scale counsel-projectile counsel-ag-popup conventional-changelog company-shell company-prescient company-irony company-emoji company-c-headers color-theme-modern cargo better-shell auto-highlight-symbol auctex anzu all-the-icons-ivy-rich all-the-icons-dired ag ace-jump-mode ace-flyspell)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
