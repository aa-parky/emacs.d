;; initial packages

;; git
(use-package magit
  :ensure t
  )

;; vterm & multi-vterm
(use-package vterm
  :ensure t
  )

(use-package multi-vterm
  :ensure t
  )

;; which key
(use-package which-key
  :ensure t
  :config
  (which-key-mode)
 )

(use-package ace-jump-mode
  :ensure t
  :config
  (global-set-key (kbd "C-c SPC") 'ace-jump-mode)
  )

;; # ivy
(use-package ivy
  :defer 0.1
  :ensure t
  :diminish
  :bind (("C-c C-r" . ivy-resume)
	 ("C-x B" . ivy-switch-buffer-other-window))
  :custom
  (ivy-count-format "(%d/%d) ")
  (ivy-use-virtual-buffers t)
   :config
   (ivy-mode)
   )

;; # swiper
(use-package swiper
  :ensure t
  :after ivy
  :bind ("C-s" . swiper)
  )

;; # counsel
(use-package counsel
  :ensure t
  :after ivy
  :config
  (counsel-mode)
  ;;(global-set-key (kbd "M-<tab>") 'counsel-switch-buffer)
  )

(use-package counsel-osx-app
  :ensure t
  :bind* ("C-c o" . counsel-osx-app)
  :commands counsel-osx-app
  :config
  (setq counsel-osx-app-location
        (list "/Applications"
              "/Applications/Misc"
              "/Applications/Utilities"
              (expand-file-name "~/Applications")
;;              (expand-file-name "~/.nix-profile/Applications")
              "/Applications/Xcode.app/Contents/Applications"))
  )
