;; https://github.com/skeeto/elfeed
(package-require 'elfeed)
(global-set-key (kbd "C-x w") 'elfeed)
(setq elfeed-feeds
      '("https://siajat.github.io/feed.xml"
	"https://gragas.github.io/feed.xml"
	"https://lilbbw.wordpress.com/feed/"
	"https://www.bloomberg.com/view/rss/contributors/matt-levine.rss"
	"https://brennan.io/blog/rss.xml"))
(provide 'tom-rss)
