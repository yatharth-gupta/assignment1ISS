#!/bin/bash
awk '$0 !~ /^[[:space:]]*$/' quotes.txt > temp.txt
awk '!x[$0]++' temp.txt 
rm temp.txt
