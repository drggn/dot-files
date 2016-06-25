(setq inhibit-startup-screen t)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(column-number-mode)
(ido-mode)
(setq ido-enable-flex-matching t)
(setq backup-directory-alist '(("". "~/.emacs.d/backup")))
(setq-default show-trailing-whitespace t)

(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq scroll-step 1)
(setq mouse-wheel-scoll-amount '(1 ((shift) . 1) ((control))))
(add-hook 'after-init-hook '(lambda ()
							  (require 'yasnippet)
							  (yas-global-mode 1)))
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq color "foreground")
(if (display-graphic-p)
	(progn(setq color "white")
		  (set-background-color "black")))
(mapc
 (lambda (face)
   (set-face-attribute face nil :weight 'normal :foreground color))
 (face-list))

(set-face-foreground 'font-lock-comment-face "green")
(set-face-foreground 'font-lock-comment-delimiter-face "green")
(set-face-foreground 'font-lock-string-face "green")
(set-face-foreground 'font-lock-function-name-face "yellow")
(add-hook 'prog-mode-hook
		  (lambda()
			(highlight-numbers-mode)
			(set-face-foreground 'highlight-numbers-number "yellow")))

(global-set-key "\M-o" 'other-window)
(global-set-key "\C-k" 'kill)
(global-set-key "\C-w" 'backward-kill-word)

(defun kill()
  (interactive)
  (if (region-active-p)
	  (kill-region (point) (mark))
	(kill-line)))
;; TODO
;; colors
;; keys
;; dupline
;; semantic
;; parsers
