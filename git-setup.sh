git config --global user.email "git-contractor1@effigo.tech"
git config --global user.name "git-contractor1"

git pull --set-upstream origin/development
git checkout --track origin/development
git branch -vv
ls -l
git branch -u origin/development
git branch -vv
git pull --hard origin/development
git status
