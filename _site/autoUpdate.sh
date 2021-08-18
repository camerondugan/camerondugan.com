(cd /home/pi/camerondugan.com 
	git reset --hard origin
	git pull
	bundle exec jekyll build
	cp -r arbidor _site
)
