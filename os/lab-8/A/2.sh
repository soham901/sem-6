read num1 num2

if [ $num1 -eq $num2 ]; then
    echo "Equal"
else
    largest=$([ $num1 -gt $num2 ] && echo $num1 || echo $num2)
    echo "Largest: $largest"
    
    if [ $((largest % 5)) -eq 0 ] && [ $((largest % 7)) -eq 0 ]; then
        echo "Divisible by 5 and 7"
    elif [ $((largest % 5)) -eq 0 ]; then
        echo "Divisible by 5"
    elif [ $((largest % 7)) -eq 0 ]; then
        echo "Divisible by 7"
    else
        echo "Not divisible by 5 or 7"
    fi
fi
