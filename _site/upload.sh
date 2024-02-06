#!/bin/sh

arg1="$*" # all text after command
if [ -z "$arg1" ]; then
	echo "Please use \"./upload.sh description of changes\""
	exit 1
fi

echo "Hiding Old Posts..."
bash tagOld.sh || exit

echo "Building..."
bundle exec jekyll build >/dev/null || exit

echo "Optimizing Assets..."
jpegoptim assets/images/*/*.jpg -q >/dev/null #One Directory
optipng assets/images/*/*.png -quiet >/dev/null
jpegoptim assets/images/*/*/*.jpg -q >/dev/null #Two Directories
optipng assets/images/*/*/*.png -quiet >/dev/null
jpegoptim assets/images/*/*/*/*.jpg -q >/dev/null #Three Directories
optipng assets/images/*/*/*/*.png -quiet >/dev/null

echo "Pushing to git..."
git add . >/dev/null
git commit -m "$arg1" >/dev/null
git push >/dev/null
echo "Pushed with the name: $arg1"
