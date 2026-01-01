# 1. Calculate Gross salary with DA and HRA based on basic salary

read basic

if [ $basic -ge 30000 ]; then
    da=$((basic * 95 / 100))
    hra=$((basic * 30 / 100 + da))
elif [ $basic -ge 20000 ]; then
    da=$((basic * 90 / 100))
    hra=$((basic * 25 / 100 + da))
elif [ $basic -ge 10000 ]; then
    da=$((basic * 80 / 100))
    hra=$((basic * 20 / 100 + da))
else
    echo "Basic salary must be >= 10000"
    exit 1
fi

gross=$((basic + da + hra))

echo "Basic Salary: $basic"
echo "DA: $da"
echo "HRA: $hra"
echo "Gross Salary: $gross"
