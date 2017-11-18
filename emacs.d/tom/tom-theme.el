;; naked
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(setq ring-bell-function 'ignore)

;; theme
;;(package-require 'twilight-bright-theme)
;;(load-theme 'twilight-bright t)
(package-require 'afternoon-theme)
(load-theme 'afternoon t)

;; font
(setq default-frame-alist '((font . "Ubuntu Mono-12")))

;; line numbers
(global-linum-mode 1)

(provide 'tom-theme)
