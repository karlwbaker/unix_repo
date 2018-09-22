#!/usr/bin/env bash
# File: git_log_report.sh

# Create a file that contains the Git log for this repository. Use grep to see which day of the week most of the commits occurred on.

most_commits=0
most_commits_day=""
x=0

touch useless_git_log_file | git log > useless_git_log_file

for day in Mon Tue Wed Thu Fri Sat Sun
do
	echo -n $day " "       # suppress newline
	egrep -o "Date:   $day " useless_git_log_file | wc -l

	x="$(grep -P 'Date:\s\s\s$day\s' useless_git_log_file | wc -l)"
	echo "${x}"
	echo $x

	if (( $x > $most_commits ))
	then
		most_commits=$?
		most_commits_day=$day # update to this day only
	elif (( $x == $most_commits ))
	then
		most_commits_day=$most_commits_day $day # append this day to list
	fi
done

echo Most commits occurred on $most_commits_day.



:<<'comment'
x="$(egrep -o Date:\s\s\s$day\s useless_git_log_file | wc -l)"
echo "${x}"

egrep -o Date:\s\s\s$day\s useless_git_log_file | wc -

egrep -o Date:\s\s\sFri\s useless_git_log_file | wc -


git_log_report.sh: line 25: Mon: command not found



This works at the prompt, with the day of the week hardcoded (`Fri` in example):
$ grep -P "Date:\s\s\sFri\s" useless_git_log_file | wc -l
3

This works in my script, with a `$day` variable, inside a `for day in Mon Tue Wed Thu Fri Sat Sun` loop:
egrep -o "Date:   $day " useless_git_log_file | wc -l

But when I try to assign the output to a variable using either syntax, it breaks:

```
x="$(grep -P 'Date:\s\s\s$day\s' useless_git_log_file | wc -l)"
echo "${x}"
Mon: command not found

x="$(egrep -o Date:\s\s\s$day\s useless_git_log_file | wc -l)"
echo "${x}"
Mon: command not found
echo $x
```

comment
