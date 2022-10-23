echo "Hiding Old Posts..."
bash tagOld.sh
echo "Building..."
bundle exec jekyll build > /dev/null
echo "Optimizing Assets..."
jpegoptim assets/images/*/*.jpg > /dev/null #One Directory
optipng assets/images/*/*.png -quiet > /dev/null 
jpegoptim assets/images/*/*/*.jpg > /dev/null #Two Directories
optipng assets/images/*/*/*.png -quiet > /dev/null
jpegoptim assets/images/*/*/*/*.jpg > /dev/null #Three Directories
optipng assets/images/*/*/*/*.png -quiet > /dev/null #Too lazy to code properly
echo "Pushing to git..."
git add . > /dev/null
git commit -m "updated via script :)" > /dev/null
git push > /dev/null
echo "Pushed with the name: updated via script :)"
