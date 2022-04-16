echo "Enter the values"

read -p 'a: ' a
read -p 'b: ' b
read -p 'c: ' c

output1="$((a+b*c))"
output2="$((a*b+c))"
output3="$((c+a/b))"
output4="$((a%b+c))"

output=($output1 $output2 $output3 $output4)

echo "Values in array are : "
echo ${output[@]}

for ((i=0 ; i<4 ; i++))
do
  for((j=0 ; j<4-i-1 ; j++))
   do

    if [ ${output[$j]} -lt ${output[$(($j+1))]} ]
     then
      temp=${output[$j]}
      output[$j]=${output[$(($j+1))]}
      output[$(($j+1))]=$temp
    fi
   done
  done

echo "Descending order of array: "
echo ${output[@]}

for ((i=0 ; i<4 ; i++ ))
do
   for ((j=0 ; j<4-i-1 ; j++ ))
   do
      if [ ${output[$j]} -gt ${output[$(($j+1))]}  ]
       then

       temp=${output[$j]}
       output[$j]=${output[$(($j+1))]}
       output[$(($j+1))]=$temp

      fi
   done
done

