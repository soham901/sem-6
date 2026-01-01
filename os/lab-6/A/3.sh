# 3. To check whether given no is ODD or EVEN.

read n
[ $((n % 2)) -eq 0 ] && echo "EVEN" || echo "ODD"
