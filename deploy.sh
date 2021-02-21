set -e
yarn build

cd .vuepress/dist



git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:louqyshiki/louBlog.git master:blogs

cd -

bash deploy.sh
