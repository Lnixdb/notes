# sum
cat countries | awk '{sum = sum + $2} END {print sum}'

# avg
cat countries | awk '{sum = sum + $2} END {print NR, sum / NR}'

# max

cat