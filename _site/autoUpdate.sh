#!/usr/bin/env bash

(
	cd /home/pi/camerondugan.com || echo "dir not found" && exit
	echo "Reloading from repo..."
	git reset --hard origin >/dev/null
	git pull >/dev/null
	echo "Building website..."
	sudo bundle exec jekyll build
	echo "Done"
)
