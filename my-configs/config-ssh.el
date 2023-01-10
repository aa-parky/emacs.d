;; remote dired
(defun tilde-pi ()
  (interactive)
  (dired "/ssh:aaparky@tilde-pi.org:/home/aaparky/"))

;; local/remote dired
(defun tilde-pi-local ()
  (interactive)
  (dired "/ssh:aaparky@192.168.1.10:/home/aaparky/"))

