(cd /home/pi/camerondugan.com 
	echo "Reloading from repo..."
	git reset --hard origin > /dev/null
	git pull > /dev/null
	echo "Finish reload"
	sleep 5
	echo "Building website..."
	bundle exec jekyll build
	echo "Finish build"
)
