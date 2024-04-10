#!/usr/bin/env bash

arg1="$*" # all text after command
if [ "$arg1" = "" ]; then
	echo "Please use \"./upload.sh description of changes\""
	exit 1
fi

# I don't do this anymore
# echo "Hiding Old Posts..."
# bash tagOld.sh || exit

echo "Building..."
bundle exec jekyll build || exit

echo "Optimizing Assets..."
jpegoptim assets/images/**/*.jpg -q
optipng assets/images/**/*.png -quiet

echo "Pushing to git..."
git add .
git commit -m "$arg1"
git push
git push github
echo "Pushed with the name: $arg1"
