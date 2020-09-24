#! /bin/bash
#parent script

touch child_script.sh

#create a child script within the parent script

chmod +x child_script.sh

#make the child script executable

	echo "#! /bin/bash" >> child_script.sh

	#create a bash script within the child script

	echo "cut -f 1,2,4 BTS_data.txt > columns.txt" >> child_script.sh

	#create a file containing only columns for ID, year, and trappability

        echo "head -n1 columns.txt > header" >> child_script.sh

	#create a file containing the header

        echo "grep 13BTS0[1-8] columns.txt > snakes.txt" >> child_script.sh

	#create a file containing only snakes 13BTS010-13BTS089

        echo "sort -k3rg snakes.txt > sorted_snakes.txt" >> child_script.sh

	#reverse sort the snakes by trappability

        echo "cat header sorted_snakes.txt | column -t > assn2" >> child_script.sh

	#combine files to create a final readable table with the header

        echo "gzip assn2" >> child_script.sh

	#compress the table so that assn2.gz will be the stdout

	echo "rm columns.txt header snakes.txt sorted_snakes.txt" >> child_script.sh 

	#remove intermediate files

./child_script.sh

#execute the child script from the parent script
