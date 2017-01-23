(require 'cl) ;; Common Lisp

(setq dotfiles-dir (file-name-directory
		    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path (concat dotfiles-dir "tom"))

(defun online? ()
  (if (and (functionp 'network-interface-list)
           (network-interface-list))
      (some (lambda (iface) (unless (equal "lo" (car iface))
                         (member 'up (first (last (network-interface-info
                                                   (car iface)))))))
            (network-interface-list))
    t))

(setq package-user-dir (concat dotfiles-dir "elpa"))
(require 'package)
(dolist (source '(("melpa" . "http://melpa.org/packages/")
                  ("marmalade" . "http://marmalade-repo.org/packages/")
                  ("elpa" . "http://tromey.com/elpa/")))
  (add-to-list 'package-archives source t))
(package-initialize)
(when (online?)
  (unless package-archive-contents (package-refresh-contents)))

(defun package-require (pkg)
  "Install a package only if it's not already installed."
  (when (not (package-installed-p pkg))
    (package-install pkg)))

;; load all my packages
(setq tom-packages '(tom-bindings
		     tom-css
		     tom-clojure
		     tom-go
		     tom-haskell
		     tom-lua
		     tom-rss
		     tom-theme
		     tom-yaml))
(dolist (file tom-packages)
  (require file))

;; modes
(delete-selection-mode)

;; macros
(fset 'init-file
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([24 6 67108896 1 backspace 126 47 100 111 116 102 105 108 101 115 46 backspace 47 101 109 97 99 115 46 100 47 105 110 105 116 46 101 108 return] 0 "%d")) arg)))
(fset 'golang
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([24 6 67108896 1 backspace 126 47 103 111 47 115 114 99 47 103 105 116 104 117 98 46 99 111 109 47 103 114 97 103 97 115 47 return] 0 "%d")) arg)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yaml-mode web-mode twilight-bright-theme solarized-theme rust-mode neotree lua-mode haskell-mode google-this go-mode fish-mode ess elfeed clojure-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
