# 2. Check if number is positive/negative/zero, and check even/odd if positive

read num

if [ $num -gt 0 ]; then
    echo "POSITIVE"
    if [ $((num % 2)) -eq 0 ]; then
        echo "EVEN"
    else
        echo "ODD"
    fi
elif [ $num -lt 0 ]; then
    echo "NEGATIVE"
else
    echo "ZERO"
fi
