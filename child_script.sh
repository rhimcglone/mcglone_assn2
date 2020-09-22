#! /bin/bash
#child script

	cut -f 1,2,4 BTS_data.txt > columns.txt

#create a file containing only columns for ID, year, and trappability

        head -n1 columns.txt > header

#create a file containing the header

        grep 13BTS0[1-8] columns.txt > snakes.txt

#create a file containing only snakes 13BTS010-13BTS089

        sort -k3rg snakes.txt > sorted_snakes.txt

#reverse sort the table by trappability

        cat header sorted_snakes.txt | column -t > assn2

#combine files to create a final readable table with the header

	gzip assn2

#assn2.gz will be the stdout

rm columns.txt header snakes.txt sorted_snakes.txt

#remove intermediate files
