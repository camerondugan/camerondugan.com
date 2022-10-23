echo "Hiding Old Posts..."
bash tagOld.sh
echo "Building..."
bundle exec jekyll build > /dev/null
echo "Optimizing Assets..."
jpegoptim assets/images/*/*.jpg
optipng assets/images/*/*.png
echo "Pushing to git..."
git add . > /dev/null
git commit -m "updated via script :)" > /dev/null
git push > /dev/null
echo "Pushed with the name: updated via script :)"
