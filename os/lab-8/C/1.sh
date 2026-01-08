read units

bill=0

if [ $units -le 50 ]; then
    bill=$((units * 50 / 100))
elif [ $units -le 150 ]; then
    bill=$((50 * 50 / 100 + (units - 50) * 75 / 100))
elif [ $units -le 250 ]; then
    bill=$((50 * 50 / 100 + 100 * 75 / 100 + (units - 150) * 120 / 100))
else
    bill=$((50 * 50 / 100 + 100 * 75 / 100 + 100 * 120 / 100 + (units - 250) * 150 / 100))
fi

surcharge=$((bill * 20 / 100))
total=$((bill + surcharge))

echo "Bill: Rs. $bill"
echo "Surcharge (20%): Rs. $surcharge"
echo "Total: Rs. $total"
