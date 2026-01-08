read num1 num2 num3 num4

largest=$num1
[ $num2 -gt $largest ] && largest=$num2
[ $num3 -gt $largest ] && largest=$num3
[ $num4 -gt $largest ] && largest=$num4

echo "Largest: $largest"
