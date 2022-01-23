echo "Building..."
bundle exec jekyll build > /dev/null
echo "Pushing to git..."
git add . > /dev/null
git commit -m "uploading" > /dev/null
git push > /dev/null
echo "Pushed with name uploading"
