# 1. *（星号）
匹配零个或多个字符。可以匹配任意长度的字符串（包括空字符串）  

# 2. ?（问号）
匹配任意单个字符。只匹配一个字符，不匹配零个字符  

# 3. []（方括号）
匹配方括号内的任意一个字符（类似正则表达式中的字符类）。可以列出具体字符或字符范围   
示例：  
ls file[12].txt：匹配 file1.txt 或 file2.txt，但不匹配 file3.txt  
ls file[a-c].txt：匹配 filea.txt, fileb.txt, 或 filec.txt  
ls file[0-9].txt：匹配 file0.txt 到 file9.txt 之间的任意文件  

# 4. [!...] 或 [^...]
匹配不在方括号内的任意一个字符  
示例：  
ls file[!a-c].txt：匹配 file 后面不是 a 到 c 的字符，例如 filed.txt，但不匹配 filea.txt、fileb.txt 或 filec.txt  
# 5. {}（大括号）
生成指定的选项序列（并不是通配符，但在 shell 扩展中也很常见）。大括号中的每个值会分别生成  
示例：  
echo file{1,2,3}.txt：输出 file1.txt file2.txt file3.txt  
echo {a,b,c}file.txt：输出 afile.txt bfile.txt cfile.txt  
# 6. ~（波浪号）
   表示当前用户的 home 目录  

示例：  
cd ~：切换到当前用户的 home 目录  
ls ~/Documents：列出 home 目录下 Documents 文件夹的内容  
# 7. \（反斜杠）
用于转义通配符或特殊字符，使其失去特殊含义  
示例：  
ls file\*.txt：匹配文件名为 file*.txt，而不是匹配所有以 file 开头的 .txt 文件  
