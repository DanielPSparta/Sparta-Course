echo "-------------------------------------------------"

read -p "Enter first number: " first 
echo "-------------------------------------------------"
read -p "Enter second number: "  second 

if [ $second -eq 0 ]
then
	echo "Cannot divide by zero, please try again"
	exit
fi 

add=$(( $first + $second )) 
sub=$(( $first - $second )) 
mul=$(( $first * $second )) 
div=$(( $first / $second )) 

echo "The addition of the two numbers:  $add" >result-file
echo "The subtraction of the 2 numbers: $sub" >>result-file
echo "The multiplication fo the two numbers:  $mul" >>result-file
echo "The division of the two numbers:  $div" >>result-file
echo "-------------------------------------------------- "
echo "The two numbers used were $first and $second " >>result-file

