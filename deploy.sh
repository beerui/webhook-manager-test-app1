#! /bin/bash
WEB_PATH=/data/webhook-manager-test/webhook-manager-test-app1/
echo "开始构建"
cd $WEB_PATH
echo "拉取main分支的代码"
git reset --hard origin/main
git clean -f
git pull
git checkout main
echo "检查权限"

# 建议手动进行安装 之后每一次只需要 npm run build即可
npm install

npm run build
echo "Finished."