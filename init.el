;; package management
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;; use-package
(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/elpa")
  (require 'use-package)
  )

;; clean config
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; clean directories
(setq backup-by-copying t
      backup-directory-alist '(("." . "~/.emacs.d/emacs-saves"))
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t
      )

;; ask before quitting
(setq confirm-kill-emacs 'y-or-n-p)

;; load my configs and packages

;; initial packages
(when (file-exists-p (expand-file-name "~/.emacs.d/my-configs/config-packages.el" user-emacs-directory))
  (load-file (expand-file-name "~/.emacs.d/my-configs/config-packages.el" user-emacs-directory)))

;; development  packages
(when (file-exists-p (expand-file-name "~/.emacs.d/my-configs/config-development.el" user-emacs-directory))
  (load-file (expand-file-name "~/.emacs.d/my-configs/config-development.el" user-emacs-directory)))

;; ui  packages
(when (file-exists-p (expand-file-name "~/.emacs.d/my-configs/config-ui.el" user-emacs-directory))
  (load-file (expand-file-name "~/.emacs.d/my-configs/config-ui.el" user-emacs-directory)))

;; ssh
(when (file-exists-p (expand-file-name "~/.emacs.d/my-configs/config-ssh.el" user-emacs-directory))
  (load-file (expand-file-name "~/.emacs.d/my-configs/config-ssh.el" user-emacs-directory)))
