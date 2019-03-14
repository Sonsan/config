;; Packages

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Change cursor type available(hbox, box, bar)
(setq-default cursor-type 'bar)


;; Tabs - indent first, completion second
(defun my-insert-tab-char ()
  "Insert a tab char. (ASCII 9, \t)"
  (interactive)
  (insert "\t"))

(global-set-key (kbd "TAB") 'my-insert-tab-char)

;; backtab
(global-set-key (kbd "<S-tab>") ' un-ident-by-removing-4-spaces)
(defun un-ident-by-removing-4-spaces ()
  "remove 4 spaces from beginning of of line"
  (interactive)
  (save-excursion
    (save-match-data
      (beginning-of-line)
      (when (looking-at "^\\s-+")
	(untabify (match-beginning 0) (match-end 0)))
      (when (looking-at "^    ")
	(replace-match "")))))
	
;; THEME
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(package-selected-packages
   (quote
    (company-irony irony projectile clojure-mode-extra-font-locking cider haskell-mode))))
  

;; FONTS
(set-face-attribute 'default nil :font "SourceCodePro SemiBold")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Disable tool-bar/Menu-bar
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Show line numbers
(global-linum-mode t)


;;----------- Irony-Company configuration ----------------------------------------------------
(add-hook 'after-init-hook 'global-company-mode)
;;(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(setq company-idle-delay 0)
(setq company-minumum-prefix-length 1)	;; Show completions after 1 char aka.: '.'
(setq company-selection-wrap-around t)
(company-tng-configure-default)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

