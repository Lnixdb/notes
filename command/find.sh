# 查找普通文件
find . -type f

#查找目录
find . -maxdepth 1 -type d

# 查找所有符合 *.JPG 通配符格式以及大小超过 1MB 的普通文件
# + 大于
# - 小于
# 单位 k(KB) M(MB) G(GB)
find . -type f -name "*.JPG" -size +1M

# ls -l file1
# ls -l file2
# ls 执行两次
find . -type f -name "foo.*" -exec ls -l '{}' ';'

# ls 执行一次
# ls -l file1 file2
find . -type f -name "foo.*" -exec ls -l '{}' +

# ls 执行一次
find . -type f -name "foo.*" | xargs ls -l