# 3. To find a largest number from 3 numbers

read num1 num2 num3

if [ $num1 -gt $num2 ]; then
    if [ $num1 -gt $num3 ]; then
        echo "Largest: $num1"
    else
        echo "Largest: $num3"
    fi
else
    if [ $num2 -gt $num3 ]; then
        echo "Largest: $num2"
    else
        echo "Largest: $num3"
    fi
fi
