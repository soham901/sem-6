read m1 m2 m3 m4 m5

total=$((m1 + m2 + m3 + m4 + m5))
percentage=$((total * 100 / 500))

if [ $percentage -gt 90 ]; then
    grade="A"
elif [ $percentage -ge 80 ]; then
    grade="B"
elif [ $percentage -ge 70 ]; then
    grade="C"
elif [ $percentage -ge 60 ]; then
    grade="D"
elif [ $percentage -ge 50 ]; then
    grade="E"
else
    grade="F"
fi

echo "Percentage: $percentage%"
echo "Grade: $grade"
