#! /bin/bash          #path of bash interpreter

actual=$((`ls | wc -l`)) #calculates no of files in current directory

echo "Guess the number of files in current directory?"
echo "HINT: The number is between $(($actual+15)) and $(($actual-13))"


read count  #asking for input

check() {         #check function defined 

	if [[ $count -gt $actual ]]
	then
		echo "Your guess is too high. Try again!"
		read count
	else
		echo "Your guess is too low. Try again!"
		read count
	fi

} 

while [[ $count -ne $actual ]]
do
		check $count $actual  #function called with 2 values passed

done

if [[ $count -eq $actual ]]
then
	echo "Congratulation you have Perfect Guess!!"
fi       
