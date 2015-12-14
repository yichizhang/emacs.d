(require 'package)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(defvar my-packages '(better-defaults
                      dash
                      find-file-in-project                      
                      idle-highlight-mode
                      ido-ubiquitous
                      ; magit
                      org
                      paredit
                      scpaste
                      smex))

(package-initialize)
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
