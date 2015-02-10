
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))



;; Disable menu-bar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
;;
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(global-set-key "\C-w" 'forward-word)
(global-set-key "\C-Q" 'backward-word)


(ido-mode t)
(cua-mode t)
(global-linum-mode t)

(setq tab-width 2) 
(setq js-indent-level 2)
(setq javascript-indent-level 2)
(setq default-tab-width 2)

(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

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
(fset 'require-same
			[?\C-\[ ?b ?\C-@ ?\C-e ?\C-c timeout ?  ?= ?  ?r ?e ?q ?u ?i ?r ?e ?\( ?  ?\' ?\C-v ?\' ?  ?\)])

(fset 'create-express-handler
			(lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote (" : function( req , res ){}OA	if	if( req.is( '' )ODODODjson )	return res.json()OD 	return res.render( )OBOAOAOAOAOA	" 0 "%d")) arg)))

(fset 'create-handler-from-route
			[?\C-\[ ?b ?\C-@ ?\C-\[ ?f ?\C-c timeout ?\C-x ?\C-\[ ?O ?C ?\C-v ?\C-\[ ?x ?c ?r ?e ?\C-i ?\C-m ?\C-\[ ?> ?\C-m ?\C-x ?\C-\[ ?O ?D ?\C-e ?\C-\[ ?O ?B])

;;Indent buffer
(fset 'indent-buffer
			"\C-[xmark\C-i-who\C-i\C-m\C-[xinden\C-i-reg\C-i\C-m\C-xsy")

(fset 'snake-to-camel
   "\C-s_\C-[OD\C-[[3~\C-[xcapi\C-i\C-m-word\C-m")


;;Macro shortcuts
(global-set-key (kbd "<f2>") 'require-same)
(global-set-key (kbd "<f8>") 'indent-buffer)



