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
