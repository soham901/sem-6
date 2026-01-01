# 1. To check whether a number is greater than 10 or not.
read a
echo $a
if [ $a -gt 10 ]; then
    echo "$a is greater than 10"
else
    echo "$a is not greater"
fi
