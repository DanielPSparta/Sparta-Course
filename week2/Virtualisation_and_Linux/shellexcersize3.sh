mkdir processes
TIME="`date`"
echo $TIME
sudo ps -a >~/processes/"$TIME".log

