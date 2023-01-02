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
