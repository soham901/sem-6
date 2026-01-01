# 3. To check if a triangle is valid based on side lengths. (Sum of two sides are greater than third side)

read a b c

if [ $((a + b)) -gt $c ] && [ $((b + c)) -gt $a ] && [ $((a + c)) -gt $b ]; then
    echo "Valid triangle"
else
    echo "Invalid triangle"
fi
