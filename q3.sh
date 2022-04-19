#!/bin/bash
file="quotes.txt"
touch file.txt
size=$(wc --bytes < $file)
number_of_lines=`wc --lines < $file`
number_of_words=`wc --words < $file`
echo "size of file is $size"
echo "number of lines in the file is $number_of_lines"
echo "number of words in the file is $number_of_words"
i=0
while IFS= read -r line
do
    ((i++))
    count="$(echo $line | wc -w)"
    echo "Line No.$i - Count of Words:$count"
done < "$file"
i=0
sed -e 's/[^[:alpha:]]/ /g' quotes.txt | tr '\n' " " |  tr -s " " | tr " " '\n'| tr 'A-Z' 'a-z' |
sort | uniq -c | sort -nr |while read count name
do
        if [ ${count} -gt 1 ]
        then
                echo "word:${name} - Count of repetition:${count}"
        fi
done
