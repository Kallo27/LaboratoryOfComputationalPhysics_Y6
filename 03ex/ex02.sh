grep -v '^#' data.csv | tr -d ',' > data.txt

even_numbers_count=$(grep -oE '\b[0-9]+\b' data.txt | awk '$1 % 2 == 0' | wc -l)
echo "Number of even numbers: $even_numbers_count"

num_greater=0
num_lower=0
threshold=$(echo "scale=6; 100 * sqrt(3) / 2" | bc -l)

while IFS=' ' read -r X X_p Y Y_p Z Z_p
do
    distance=$(echo "scale=6; sqrt($X^2 + $Y^2 + $Z^2)" | bc -l)
    if [ $(echo "$distance > $threshold" | bc -l) -eq 1 ]; then
        ((num_greater++))
    else
        ((num_lower++))
    fi
    
done < data.txt

echo "Entries with sqrt(X^2 + Y^2 + Z^2) greater than $threshold: $num_greater"
echo "Entries with sqrt(X^2 + Y^2 + Z^2) smaller than or equal to $threshold: $num_lower"


read -p "Enter the value of n: " n

if [[ ! $n =~ ^[1-9][0-9]*$ ]]
then
    echo "Invalid input. Please enter a positive integer."
    exit 1
fi

for (( i = 1; i <= n; i++ ))
do

    while IFS=' ' read -r X Y Z X_p Y_p Z_p
    do
        X=$(echo "scale=6; $X / $i" | bc -l)
        Y=$(echo "scale=6; $Y / $i" | bc -l)
        Z=$(echo "scale=6; $Z / $i" | bc -l)
        X_p=$(echo "scale=6; $X_p / $i" | bc -l)
        Y_p=$(echo "scale=6; $Y_p / $i" | bc -l)
        Z_p=$(echo "scale=6; $Z_p / $i" | bc -l)

        echo "$X $Y $Z $X_p $Y_p $Z_p" >> "data_$i.txt"
    done < "data.txt"

done

echo "Copies created successfully."