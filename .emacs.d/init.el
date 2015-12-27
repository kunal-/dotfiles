
;; setup melpa -- package manager
(require 'cl)
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; add new packages here:
(defvar my-packages '(evil company))

(dolist (p my-packages) (when (not (package-installed-p p))
    (package-install p)))

;; enable evil by default
(require 'evil)
(evil-mode 1)

;;;; Generic settings

(global-linum-mode 1) ; display line numbers
(column-number-mode 1) ; display line number

;; Really nice completion for commands and whatnot
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;; Remember what I had open when I quit
(desktop-save-mode 1)

;; Tabs to spaces
(setq-default indent-tabs-mode nil)


;; Extra useful settings

;;(dd-hook 'before-save-hook 'delete-trailing-whitespace)

;; (add-hook 'text-mode-hook
;;           (lambda ()
;;             ;; Hard-wrap text when in plaintext mode
;;             (turn-on-auto-fill)))

;; Changes all yes/no questions to y/n type
;fset 'yes-or-no-p 'y-or-n-p)

;; Stop littering everywhere with save files, put them somewhere
;(setq backup-directory-alist '(("." . "~/.emacs-backups")))

;; 
;; ;; Use company-mode in all buffers (more completion)
;; (add-hook 'after-init-hook 'global-company-mode)show-paren-mode 1) ; higlight paranthesis
