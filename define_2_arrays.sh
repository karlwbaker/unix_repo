# File: define_2_arrays.sh

# Write a bash script where you define two arrays inside of the script, and the sum of the lengths of the arrays are printed to the console when the script is run.

plagues=(blood frogs lice flies sickness boils hail locusts darkness death)

number_array_1={1..99}
number_array_2=({1..99})

: <<'END'
echo $number_array_1
echo $number_array_2
$number_array_1
$number_array_2
echo ${number_array_1}
echo ${number_array_2}
${number_array_1}
${number_array_2}
echo ${number_array_1[*]}
echo ${number_array_2[*]}
${number_array_1[*]}
${number_array_2[*]}
END

expr ${#plagues[*]} + ${#number_array_1[*]}
expr ${#plagues[*]} + ${#number_array_2[*]}
