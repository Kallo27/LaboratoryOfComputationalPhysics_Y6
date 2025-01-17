grep -v '^#' data.csv | tr -d ',' > data.txt

even_numbers_count=$(grep -oE '\b[0-9]+\b' data.txt | awk '$1 % 2 == 0' | wc -l)
echo "The number of even numbers is: $even_numbers_count."

num_lower=0
num_greater=0
threshold=$(echo "100 * sqrt(3) / 2" | bc -l)

while IFS=' ' read -r X Y Z Xp Yp Zp
do
    distance=$(echo "scale= 6; sqrt($X^2 + $Y^2 +$Z^2)" | bc -l)
    if [ $(echo "$distance > $threshold" | bc -l) -eq 1 ]
    then
        ((num_greater++))
    else
        ((num_lower++))
    fi
done < data.txt

echo "The number of distances lower than the threshold is: $num_lower"
echo "The number of distances greater than the threshold is: $num_greater"

read -p "Enter the number of files (n):" n

if [[ ! $n =~ ^[1-9][0-9]*$ ]]
then
    echo "Not valid input: n must be a positive integer (> 0)."
    exit 1
fi

for (( i = 1; i <= n; i++ ))
do
    while IFS=' ' read -r X Y Z Xp Yp Zp
    do
        X=$(echo "scale= 6; $X / $i" | bc -l)
        Y=$(echo "scale= 6; $Y / $i" | bc -l)
        Z=$(echo "scale= 6; $Z / $i" | bc -l)
        Xp=$(echo "scale= 6; $Xp / $i" | bc -l)
        Yp=$(echo "scale= 6; $Yp / $i" | bc -l)
        Zp=$(echo "scale= 6; $Zp / $i" | bc -l)
        
        echo "$X $Y $Z $Xp $Yp $Zp" >> "./data_$i.txt"        
        
    done < "data.txt"

done 

echo "Copies created successfully."
