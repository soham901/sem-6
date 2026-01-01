# 3. To check whether person is eligible to vote. (age>18).

echo "1 to enter age directly otherwise 2 for dob"

read ch

if [ $ch -eq 1 ]
then
	echo "Enter the age : "
	read age
	[ $age -gt 18 ] && echo "ELIGIBLE TO VOTE" || echo "NOT ELIGIBLE TO VOTE"
else
	echo "Enter the DOB : "
	read dob
	by=$(echo $dob | cut -d'/' -f3)
	cy=$(date +%Y)
	age=$((cy-by))
	[ $age -gt 18 ] && echo "ELIGIBLE TO VOTE" || echo "NOT ELIGIBLE TO VOTE"
fi

