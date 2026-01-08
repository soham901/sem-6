read num1 num2 num3

largest=$num1
[ $num2 -gt $largest ] && largest=$num2
[ $num3 -gt $largest ] && largest=$num3

echo "Largest: $largest"
