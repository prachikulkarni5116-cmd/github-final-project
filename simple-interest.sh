
#!/bin/bash

echo "Simple Interest Calculator"
echo "Calculate interest using principal, rate, and time."

read -p "Enter principal amount: " principal
read -p "Enter annual rate of interest (%): " rate
read -p "Enter time period (years): " time

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

total=$(awk -v p="$principal" -v i="$interest" 'BEGIN { printf "%.2f", p + i }')

echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time: $time years"
echo "Simple Interest: $interest"
echo "Total Amount: $total"
echo "Calculate interest using principal, rate, and time."
