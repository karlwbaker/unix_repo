#!/usr/bin/env bash
# File: lines_in_file.sh

:<<'END'

    Line 5 - This command will print the number of lines in the file referred to by $1.
    Line 8 - We use command substitution to take what would normally be printed to the screen and assign it to the variable num_lines

END


lines_in_file () {
    cat $1 | wc -l
}

    num_lines=$( lines_in_file $1 )
    echo The file $1 has $num_lines lines in it.


:<<'END2'
    $ cat test_sed
    Tomato
    Lettuce
    Capsicum
    $ bash lines_in_file.sh test_sed
    The file test_sed has 3 lines in it.
    $ 
END2
