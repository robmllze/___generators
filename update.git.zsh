# Update the current module with the latest changes from the upstream repository.
git init
git add .
git commit -m "upstream"
git remote add upstream https://github.com/robmllze/___generators.git
git fetch upstream
git merge upstream/main --allow-unrelated-histories --no-edit