README.md:
	echo "# GUESSING GAME" > README.md
	echo "The date and time the make command ran is: `date` "  >> README.md
	echo "The number of lines in guessinggame.sh is : `wc -l guessinggame.sh | egrep -o \"[0-9]+\"` " >> README.md 

