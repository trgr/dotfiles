
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(ido-mode t)
(cua-mode t)
(global-linum-mode t)

;;ORG MODE
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)


;; Add autocomplete for js,c/c++, php and python
(add-hook 'javascript-mode-hook 'auto-complete-mode)
(add-hook 'js-mode-hook 'auto-complete-mode)
(add-hook 'c-mode-hook 'auto-complete-mode)
(add-hook 'c++-mode-hook 'auto-complete-mode)
(add-hook 'php-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'auto-complete-mode)

;; Add modes for php, js, and markdown
(autoload 'php-mode "php-mode.el" "Php mode." t)
(setq auto-mode-alist (append '(("/*.\.php[345]?$" . php-mode)) auto-mode-alist))
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.ejs$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.gyp$" . javascript-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


;; Disable emacs backup files
(setq make-backup-files nil)

(setq scheme-program-name "guile")

;; Git
(global-set-key (kbd "<f5>") 'magit-status)
(global-set-key (kbd "<f6>") 'magit-push)

;; Keyboard macro recording
(global-set-key (kbd "C-x r s") 'start-kbd-macro)
(global-set-key (kbd "C-x r e") 'end-kbd-macro)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Buffer and shell
(global-set-key (kbd "C-x o") 'next-buffer)
(global-set-key (kbd "C-x p") 'previous-buffer)
(global-set-key (kbd "C-c s") 'eshell )

;; Move around in windows
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("3b819bba57a676edf6e4881bd38c777f96d1aa3b3b5bc21d8266fa5b0d0f1ebf" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; BEGIN MY SAVED MACROS
(fset 'create-express-handler
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote (" : function( req , res ){}OA	if	if( req.is( '' )ODODODjson )	return res.json()OD 	return res.render( )OBOAOAOAOAOA	" 0 "%d")) arg)))

