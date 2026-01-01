# 2. Generate mark sheet of a student (3 subjects, total, percentage, class)

read sub1 sub2 sub3

total=$((sub1 + sub2 + sub3))
percentage=$((total * 100 / 300))

if [ $percentage -ge 90 ]; then
    class="A+"
elif [ $percentage -ge 80 ]; then
    class="A"
elif [ $percentage -ge 70 ]; then
    class="B"
elif [ $percentage -ge 60 ]; then
    class="C"
elif [ $percentage -ge 50 ]; then
    class="D"
else
    class="F"
fi

echo "Total: $total"
echo "Percentage: $percentage%"
echo "Class: $class"
