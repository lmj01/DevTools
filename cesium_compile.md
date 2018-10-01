
-- 获取最新的代码
   git fetch upstream
   git merge upstream/master

-- 更改版本号
   update the version in package.json to match, e.g. 1.a.b -> 1.c.d.

-- 删除其他文件, 不属于当前版本的文件都删除
   git clean -d -x -f. 

-- npm install
-- npm run makeZipFile
-- 对打包的文件进行解压后
-- npm install 
-- npm start
-- browser to http://localhost:8080 

