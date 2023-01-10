;;; for my denote specific configurations

;; default local directory for denotes notes
(setq denote-directory (expand-file-name "~/Developer/denote"))

;; default txt
(setq denote-file-type 'text)

;; directories
(setq denote-dired-directories
      (list denote-directory
	    (thread-last denote-directory (expand-file-name "attachment"))
	    (expand-file-name "~/Developer/denote")
	    (expand-file-name "~/Developer/capsule-tilde-pi")
	    )
      )

(defvar my-denote-gemtext-front-matter
  "title:      %s
date:       %s
tags:       %s
identifier: %s
---------------------------\n\n"
  "Sample of gemtext front matter (copy of `denote-text-front-matter').
It is passed to `format' with arguments TITLE, DATE, KEYWORDS,
ID.  Advanced users are advised to consult Info node `(denote)
Change the front matter format'.")

(add-to-list 'denote-file-types
             '(gemtext
               :extension ".gmi"
               :front-matter my-denote-gemtext-front-matter
               :title-key-regexp "^title\\s-*:"
               :title-value-function identity
               :title-value-reverse-function denote-trim-whitespace
               :keywords-key-regexp "^tags\\s-*:"
               :keywords-value-function denote-format-keywords-for-text-front-matter
               :keywords-value-reverse-function denote-extract-keywords-from-front-matter))

(setq denote-file-type 'gemtext)
