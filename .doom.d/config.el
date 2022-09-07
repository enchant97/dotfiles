;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Identify you
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Theme
(setq doom-theme 'doom-one)
(setq display-line-numbers-type t)

;; org
(setq org-directory "~/org/")

;; Font
(setq doom-font (font-spec :family "Fira Code" :size 14))
(+global-word-wrap-mode +1)

;; Projects
(setq projectile-project-search-path '("~/Workspaces/"))
(setq projectile-auto-discover 1)

;; Python
(add-hook 'before-save-hook 'py-isort-before-save)
(after! dap-mode
  (setq dap-python-debugger 'debugpy))
