;; https://github.com/skeeto/elfeed
(package-require 'elfeed)
(global-set-key (kbd "C-x w") 'elfeed)
(setq elfeed-feeds
      '("https://siajat.github.io/feed.xml"
	"https://gragas.github.io/feed.xml"
	"https://www.bloomberg.com/view/rss/contributors/matt-levine.rss"))
(provide 'tom-rss)
