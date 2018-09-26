
-- 打开终端

-- 列出远程origin的repository
   git remote -v

-- 添加一个指定的上游仓库,upstream repository
   git remote add upstream xxxx-original-repository-url

-- 验证是否添加成功upstream repository 
   git remote -v

-- 从上游仓库同步到本地，会存储在本地的upstream
   git fetch upstream

-- 合并分支到本地
   git merge upstream/branch-name

-- 把本地合并后的更新到远程,
   git push origin branch-name
