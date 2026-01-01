# 2. Check type of triangle based on sides

read a b c

# Check for valid triangle
if [ $((a + b)) -gt $c ] && [ $((b + c)) -gt $a ] && [ $((a + c)) -gt $b ]; then
    
    if [ $a -eq $b ] && [ $b -eq $c ]; then
        echo "EQUILATERAL"
    elif [ $a -eq $b ] || [ $b -eq $c ] || [ $a -eq $c ]; then
        echo "ISOSCELES"
    else
        echo "SCALENE"
    fi
else
    echo "INVALID TRIANGLE"
fi
