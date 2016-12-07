(add-hook 'eww-mode-hook 'visual-line-mode)
(defun wiki (page-title)
  "Open the wikipedia page in eww"
  (interactive "sEnter Wikipedia page title: ")
  (eww (concat "https://en.wikipedia.org/wiki/" page-title)))
(provide 'tom-wiki)
