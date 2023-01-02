;; no startup screen
(setq inhibit-startup-screen t)

;; # remove toolbar
(tool-bar-mode -1)
;;(menu-bar-mode -1)
(scroll-bar-mode -1)

;; give me back my right alt!
(setq mac-option-key-is-meta t)
(setq mac-right-option-modifier nil)

;; # line numbers when files are open
(add-hook 'text-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
;; display col number in modeline
(column-number-mode 1)

;; display date & time
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time)

;; ace-window and jump
(use-package ace-window
  :ensure t
  :config
  (global-set-key (kbd "M-o") 'ace-window)
  (custom-set-faces
   '(aw-leading-char-face
     ((t (:inherit ace-jump-face-background :height 4.0)))))
  )

;; # doom themes & doom-modeline
(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  )

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  )
