#! /usr/bin/env bash
# File: Thank_Moses_its_Friday.sh

#    4. Write a Bash script that prints “Thank Moses it’s Friday” if today is Friday. (Hint: take a look at the date program).

: <<'END'

date [OPTION]... [+FORMAT]

END

date_var=$(date +%u) # format option for day of week (1..7); 1 is Monday
# echo $date_var # prints day of week (1..7) 

if [[ "$date_var" == "5" ]]
then
  echo “Thank Moses it’s Friday”
else
  echo "Can't wait for Friday!"
fi






