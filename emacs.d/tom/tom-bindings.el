(package-require 'avy)
(global-unset-key (kbd "C-_"))
(global-set-key (kbd "C-_") 'avy-goto-char)

(setq ns-function-modifier 'control)
(setq ns-command-modifier 'meta)

(global-set-key (kbd "C-c C-e") 'eval-defun)

(global-unset-key (kbd "M-l"))
(global-set-key (kbd "M-l") 'goto-line)

(defun goto-end-of-line (n)
  (interactive "nGoto end of line: ")
  (goto-char (point-min)) (forward-line (1- n))
  (move-end-of-line nil))
(global-unset-key (kbd "M-o"))
(global-set-key (kbd "M-o") 'goto-end-of-line)

(defun select-lines (a b)
  (interactive "nFirst line: \nnSecond Line: ")
  (goto-char (point-min)) (forward-line (1- a))
  (set-mark-command nil)
  (goto-char (point-min)) (forward-line (1- b)))
(global-unset-key (kbd "M-p"))
(global-set-key (kbd "M-p") 'select-lines)

(defun prev-window ()
  (interactive)
  (other-window -1))

(global-set-key (kbd "C-.") 'other-window)
(global-set-key (kbd "C-,") 'prev-window)
(defun next-space ()
  (interactive)
  (forward-whitespace 1))

(defun prev-space ()
  (interactive)
  (forward-whitespace -1))

(global-unset-key (kbd "M-i"))
(global-unset-key (kbd "M-j"))
(global-set-key (kbd "M-i") 'next-space)
(global-set-key (kbd "M-j") 'prev-space)

(global-unset-key (kbd "C-]"))
(global-set-key (kbd "C-]") 'replace-string)

(fset 'main-cpp
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([35 105 110 99 108 117 101 backspace 100 101 32 60 105 111 115 116 114 101 97 109 62 return return 105 110 116 32 109 97 105 110 40 41 33554464 123 return return 125 16 tab] 0 "%d")) arg)))

(defun toggle-maximize-buffer ()
  "Toggle maximize buffer"
  (interactive)
  (if (= 1 (length (window-list)))
      (progn
        (set-window-configuration my-saved-window-configuration)
        (goto-char my-saved-point))
    (setq my-saved-window-configuration (current-window-configuration)
          my-saved-point (point))
    (delete-other-windows)))

(global-unset-key (kbd "C-x f"))
(global-set-key (kbd "C-x f") 'toggle-maximize-buffer)

(provide 'tom-bindings)
