#! /usr/bin/env bash
# File: even_odd.sh

#    2. Write a Bash script that takes one argument and prints “even” if the first argument is an even number or “odd” if the first argument is an odd number.

if (( "$1%2"=="0" ))
then
  echo "even"
elif (( "$1%2"=="1" ))
then
  echo "odd"
else
  echo "neither even nor odd, which is odd"     # when I pass 1.1 as arg, prints this line.
						# BUT when I pass **alpha chars "x" or "y"** as arg it outputs "even" instead of this line
						# and it's not just getting the ASCII value of the char b/c consecutive letters both return "even"
fi





# MULTILINE COMMENT

: <<'END'


#        ****integer and string comparison use a different set of operators AND parens/brackets****


                                       **integer comparison**

-eq

    is equal to

    if [ "$a" -eq "$b" ]
-ne

    is not equal to

    if [ "$a" -ne "$b" ]
-gt

    is greater than

    if [ "$a" -gt "$b" ]
-ge

    is greater than or equal to

    if [ "$a" -ge "$b" ]
-lt

    is less than

    if [ "$a" -lt "$b" ]
-le

    is less than or equal to

    if [ "$a" -le "$b" ]
<

    is less than (within double parentheses)

    (("$a" < "$b"))
<=

    is less than or equal to (within double parentheses)

    (("$a" <= "$b"))
>

    is greater than (within double parentheses)

    (("$a" > "$b"))
>=

    is greater than or equal to (within double parentheses)

    (("$a" >= "$b"))

                                       **string comparison**

=

    is equal to

    if [ "$a" = "$b" ]

    Caution	

    Note the whitespace framing the =.

    if [ "$a"="$b" ] is not equivalent to the above.
==

    is equal to

    if [ "$a" == "$b" ]

    This is a synonym for =.

    Note	

    The == comparison operator behaves differently within a double-brackets test than within single brackets.

    [[ $a == z* ]]   # True if $a starts with an "z" (pattern matching).
    [[ $a == "z*" ]] # True if $a is equal to z* (literal matching).

    [ $a == z* ]     # File globbing and word splitting take place.
    [ "$a" == "z*" ] # True if $a is equal to z* (literal matching).

    # Thanks, Stéphane Chazelas

!=

    is not equal to

    if [ "$a" != "$b" ]

    This operator uses pattern matching within a [[ ... ]] construct.
<

    is less than, in ASCII alphabetical order

    if [[ "$a" < "$b" ]]

    if [ "$a" \< "$b" ]

    Note that the "<" needs to be escaped within a [ ] construct.
>

    is greater than, in ASCII alphabetical order

    if [[ "$a" > "$b" ]]

    if [ "$a" \> "$b" ]

    Note that the ">" needs to be escaped within a [ ] construct.

    See Example 27-11 for an application of this comparison operator.
-z

    string is null, that is, has zero length

     String=''   # Zero-length ("null") string variable.

    if [ -z "$String" ]
    then
      echo "\$String is null."
    else
      echo "\$String is NOT null."
    fi     # $String is null.

-n

    string is not null.

http://tldp.org/LDP/abs/html/comparison-ops.html

END
