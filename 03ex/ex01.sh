#!/bin/bash

mkdir "./students"

cd "./students"

if [ ! -f ./LCP_22-23_students.csv ] 
then
    wget https://www.dropbox.com/s/867rtx3az6e9gm8/LCP_22-23_students.csv
fi

grep "PoD" "./LCP_22-23_students.csv" > "./PoD_Students"
grep "Physics" "./LCP_22-23_students.csv" > "./Physics_Students"

max=0
max_letter="A"

for letter in {A..Z}
do
    count=$(cut -f1 -d "," "./LCP_22-23_students.csv" | grep -c "$letter")
    echo "$letter: $count" >> "./count_by_letter"

    if [ $count -gt $max ]
    then
        max=$count
        max_letter=$letter
    fi
done

echo "The letter with the most appearances is: $max_letter"