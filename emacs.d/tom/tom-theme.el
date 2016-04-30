;; naked
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(setq ring-bell-function 'ignore)

;; theme
(package-require 'solarized-theme)
(load-theme 'solarized-dark t)

;; font
(set-default-font "Roboto Mono-10")

(provide 'tom-theme)
