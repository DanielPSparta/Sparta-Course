read -p "Enter a username: " USERNAME
read -s -p "Enter a password: " PASSWORD
echo ""
read -p "Enter a directory name: " DIRECTORY

echo "The current working directory is: "
pwd
WORKINGDIR=`pwd`

DATE=`date`
mkdir $DIRECTORY

touch ~/$DIRECTORY/cyber.log
echo $WORKINGDIR >~/$DIRECTORY/cyber.log
echo $USER >>~/$DIRECTORY/cyber.log
echo $DATE >>~/$DIRECTORY/cyber.log
echo $USERNAME >>~/$DIRECTORY/cyber.log
echo $PASSWORD >>~/$DIRECTORY/cyber.log

read -p "How many packages do you want to install? " NUMBER
echo $NUMBER >>~/$DIRECTORY/cyber.log

for i in $(seq 1 $NUMBER)
do 
	read -p "What is the name of package $i: " PACKAGE
	echo $PACKAGE >>~/$DIRECTORY/cyber.log
	sudo  apt install $PACKAGE -y >~/$DIRECTORY/$PACKAGE.log
	

done
