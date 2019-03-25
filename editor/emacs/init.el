;; My Personal emacs ~/.emacs.d/init.el
;; Main source: "https://emacswiki.org/"

;; TODO: Split Auto install packages, Editor settings, ... into different files.

(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)


;; slight background transparency
(add-to-list 'default-frame-alist '(alpha . (95 . 90)))

;; Change Font
(add-to-list 'default-frame-alist '(font . "IBM Plex Mono SemiBold"))

;; disable things
(menu-bar-mode nil)
(tool-bar-mode nil)
(scroll-bar-mode nil)
(setq inhibit-startup-message t)
(setq visible-bell t)
(define-key menu-bar-tools-menu [games] nil)

;; Other things for setup
(global-font-lock-mode 1)
(global-hl-line-mode t)
(column-number-mode t)
(setq mouse-yank-at-point t)	;; Paste at cursor position
(mouse-wheel-mode t)

;; Enviroment
(setq shell-file-name "/usr/bin/fish")
(setq exec-path (append exec-path '("/bin")))
(setq auto-save-timeout 60)	;; save every 60 seconds
(desktop-save-mode t)		;; save on quit
(setq backup-directory-alist '(("." . "~/backup/emacs/")))
(setq read-file-name-completion-ignore-case t)
(setq-default tab-width 4)

;; Buffer settings
(setq pop-up-frames t)
(setq enable-recursive-minibuffers t)
(windmove-default-keybindings)	;; Switch windows with shift+Arrows

;; Search - Copy - Paste
(setq-default case-fold-search t)	;; case SENSITIVE serch
(global-unset-key "\C-v")	;; To allow paste with Ctrl+V
(cua-mode t)			;; Enable "normal" copy paste

;; change aliases
(defalias 'yes-or-no-p 'y-or-n-p)	;; y or n instead of yes and no

;; Autostart
(add-hook 'emacs-startup-hook (lambda ()
				(speedbar t)))

;; Generated from the package installer
(custom-set-variables

 '(package-selected-packages (quote (auto-complete))))
(custom-set-faces

 )
