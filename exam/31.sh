mkdir "./students"
cd "./students"

if [ ! -f ./LCP_22-23_students.csv ]
then
    wget https://www.dropbox.com/s/867rtx3az6e9gm8/LCP_22-23_students.csv
fi

grep "PoD" "./LCP_22-23_students.csv" > "./PoD_students"
grep "Physics" "./LCP_22-23_students.csv" > "./Physics_students"

max_count=0
max_letter="A"

for letter in {A..Z}
do
    count=$(awk -F '[, ]' 'NR>1 {print substr($1, 1, 1)}' ./LCP_22-23_students.csv | grep -c "$letter")
    echo "$letter: $count" >> "./count_by_letter"

    if [ $count -gt $max_count ]
    then
        max_count=$count
        max_letter=$letter
    fi
done

echo "The most frequent initial is: $max_letter."

awk -F ',' 'NR>1 {file="./group_"int((NR-2)%18)+1".txt"; print $0 >> file; close(file)}' ./LCP_22-23_students.csv