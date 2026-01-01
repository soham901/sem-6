# 1. To check given year is Leap year or not.

read year

if [ $((year % 400)) -eq 0 ]; then
    echo "LEAP YEAR"
elif [ $((year % 100)) -eq 0 ]; then
    echo "NOT LEAP YEAR"
elif [ $((year % 4)) -eq 0 ]; then
    echo "LEAP YEAR"
else
    echo "NOT LEAP YEAR"
fi
