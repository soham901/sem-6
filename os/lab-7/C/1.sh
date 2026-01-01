# 1. Accept two integers and check equal, if not equal find largest

read num1 num2

if [ $num1 -eq $num2 ]; then
    echo "EQUAL"
else
    if [ $num1 -gt $num2 ]; then
        echo "NOT EQUAL"
        echo "Largest: $num1"
    else
        echo "NOT EQUAL"
        echo "Largest: $num2"
    fi
fi
