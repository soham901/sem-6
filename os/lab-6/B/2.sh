# 2. To check whether given no is divisible by 5 or not.

read n
[ $((n % 5)) -eq 0 ] && echo "DIVISIBLE BY 5" || echo "NOT DIVISIBLE BY 5"
