;; https://github.com/skeeto/elfeed
(package-require 'elfeed)
(global-set-key (kbd "C-x w") 'elfeed)
(setq elfeed-feeds
      '("https://siajat.github.io/feed.xml"
	"https://gragas.github.io/feed.xml"
	"https://lilbbw.wordpress.com/feed/"
	"https://www.bloomberg.com/view/rss/contributors/matt-levine.rss"
	"https://brennan.io/blog/rss.xml"
	"http://randycoulman.com/atom.xml"
	"https://medium.com/feed/@dan_abramov/"
	"https://daveceddia.com/feed.xml"
	"https://decembersoft.com/feed/"
	"http://feeds.feedburner.com/TheJavascriptPlayground"
	"http://feedpress.me/jlongster"
	"https://www.robinwieruch.de/index.xml"
	"http://feeds.feedburner.com/2ality"
	"http://steve-yegge.blogspot.com/atom.xml"
	"https://www.quantamagazine.org/feed/"))
(provide 'tom-rss)
