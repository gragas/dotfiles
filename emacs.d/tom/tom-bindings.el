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
(defun regress ()
  (interactive)
  (find-file "~/go/src/github.com/coreos/regress"))
(provide 'tom-bindings)
