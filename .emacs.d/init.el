  (require 'package)
  (add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
  (package-refresh-contents)
  (package-initialize)

;; install use-package

(unless (package-installed-p 'use-package)
   (package-install 'use-package))

;; reduce garbage collection to make startup faster
  (use-package gcmh
    :ensure t
    :config
    (gcmh-mode 1))

  (setq gc-cons-threshold 402653184
	 gc-cons-percentage 0.6)

  (add-hook 'emacs-startup-hook
	   (lambda ()
		(message "*** Emacs loaded in %s with %d garbage collections."
		   (format "%.2f seconds"
			     (float-time
			       (time-subtract after-init-time before-init-time)))
		    gcs-done)))

;; silence compiler warnings
(setq comp-async-report-warnings-errors nil)

;; change font
  (add-to-list 'default-frame-alist '(font . "Jetbrains Mono"))
  (set-face-attribute 'default t :font "Jetbrains Mono")

;; remove stuff for babbies like scroll bars
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)

  (global-display-line-numbers-mode 1)
  (global-visual-line-mode t)

;; install doom-themes
   (use-package doom-themes :ensure t)
   (setq doom-themes-enable-bold t)
   (setq doom-themes-enable-italic t)
   (load-theme 'doom-one t)

;; use smart modeline
  (use-package smart-mode-line :ensure t)
  (sml/setup)

;; emms
  (use-package emms :ensure t)
  (require 'emms-setup)
  (emms-all)
  (emms-default-players)
