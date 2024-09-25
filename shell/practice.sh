#!/bin/bash

FILE="page.html"

if [ -e $FILE ]; then
  if [ -f $FILE ]; then
    echo "$FILE is a regular file."
  fi

  if [ -r $FILE ]; then
      echo "$FILE is a readable file."
  fi

else
  echo "$FILE does not exist."
fi

# 字符串表达式
ANSWER="no"
if [ -z "$ANSWER" ]; then
  echo "There is no answer." >&2
  exit 1
fi

if [ "$ANSWER" = "yes" ]; then
    echo "The answer is YES."
elif [ "$ANSWER" = "no" ]; then
    echo "The answer is NO."
else
    echo "The answer is Unknown."
fi

# 整数表达式
INT=0
if [ -z "$INT" ]; then
  echo "Int is empty." >&2
  exit 1
fi

if [ $INT -eq 0 ]; then
  echo "INT is zero."
fi

# while 循环
count=1
while [ $count -le 5 ]; do
  echo $count
  ((count=count+1))
  if ((count > 3)); then
    break
  fi
done

while read -r name age role company; do
  echo "$name $age $role $company"
done < input.file

for i in A B C D; do
  echo $i
done


for filename in $(find . -maxdepth 1 -type f); do
  echo "$filename"
done

for filename in *; do
  echo "$filename"
done


