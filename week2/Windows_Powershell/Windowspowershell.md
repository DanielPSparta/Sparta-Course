Windows architecture

Kernel mode:
Drivers and HAL, these are connected to the hardware
User mode:
Doesn’t have all the privileges as the kernel mode, they get access to the kernel through the windows API

Security wise don’t have applications that your don’t trust running in the kernel mode, they should be running in user mode.

What is a file system?
The structure in which you OS organises the file, the system that enables the storing and retrieval of information from the storage media.
Windows has several file systems, we currently use NTFS (new technology file system) before that we had FAT 32, then before that FAT 16, then before that FAT 12 (File allocation technology. (Fat is used in memory sticks. FAT was not developed as a secure system so we don’t use them generally.
NTFS has 2 modes: sensitive case mode and insensitive case mode. In sensitive you can trick the user by using a capital or lowercase into opening the wrong software.



User and group management

Go to start menu
Settings
Search accounts then click add edit or remove other users
Click on family or other users
Then click on add someone else to this PC
I don’t have this persons user account
Create an account

Mostly the hacker or malware will create an extra account with admin privileges  

To check you go to computer management
Local users and groups
Any extra account will appear here

Also in computer management
Check under shared folders


Generally have your day to day account be a non-administrator account
Also don’t share folders unless you really have to, especially if you are accessing the machine on a public network  

To share folders right click and share folder
Shared folder are accessed through network
To alter these folders you can right click and click advanced sharing to restrict sharing or stop sharing folders




Another big issue was remote desktop connections
To check remote desktop:
Settings
System
Remote desktop
Always turn off if you are not using it
Also restrict who can connect to it


Also always check event viewer/ windows logging
This can be used to check events on the computer under the windows logs

Windows registry
This is a database of information of the configuration of the system.  Malware will start by attacking windows registry because it shows apps that run on boot etc.
To access just write regedit (or windows + r and then write regedit. Every thing that happens windows is managed on regedit
Computer\HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run
Is the keys run on start up, many create a backup of this so you can back it up or see any changes

Environment Variables
Right click on this PC
Properties
Search envir
And click edit the system environment variables

Malware will add them into the environment variables path, the variables will run from top to bottom in terms of priority



Windows PowerShell
Basically windows command line. Built on dot net framework.  So you can write whole script on PowerShell or programme.
Open via start menu
Search power shell.
Usually starts without admin privileges to access do the standard right click and run as administrator.

Get-
Start-
Out-
Stop-
New-
Set-Location .\Documents\ (set location as documents)
Command starts

Get-Service (gets services running on computer ) (or type gsv)
Get-Service “vm” filters out everything without vm in the name


Power shell allows you to get the hot fixes
Get-Hotfix
These are the hotfixes that have been or should be installed

To install the hotfix
Get-Hotfix -id (then type the id of the hotfix you want to install)


Write-Host “Type here”           prints Type here

$var = Read-Host                   (in put your string or variable)
Write-Host $var                      (print previously found variable)
Get-ChildItem Env:                       (get the environment variables)

To create a directory:
New-Item -Path “TestDirectory” -Directory                 (creates a new directory)
Set-Location .\TestDirectory\

New-Item -Path “TestFile.txt” -ItemType File

Set-Content .\TestFile.txt “Welcome – first line”
Get-Content .\TestFile.txt           (output file in console
Add-Content .\TestFile.txt   (more add to end on new line)
Get-Help Test-Path             (get help for a command)
Get-Date  (get date)
$HOME (home directory)
$ARGS (sets variable all variables are started with $)
$$                 outputs last variable in console


Open notepad.

Write the following code:

$FIRST_NUM = 3
$SECOND_NUM = 5
$SUM = $FIRST_NUM + $SECOND_NUM
Write-Host $SUM
Write-Host $FIRST_NUM ‘+’ $SECOND_NUM ‘=’ $SUM

Save the script in your desktop directory using the name sum01.ps1

Open PowerShell.

Change the current working directory using Set-Location

Set-Location $HOME/Desktop

Run the script by typing this command

& "$HOME/Desktop/sum01.ps1"
.\sumo1.ps1 to run the script
Get-Content sum01.ps1 will run the script

- Read two numbers from the input and assign them to FIRST_NUM and $SECOND_NUM variables.
- Perform the four basic operations (Addition, Subtraction, Multiplication and Division) on the two numbers and assign the results to new variables $SUM, $SUB, $MUL and $DIV.
- Display the results in a readable syntax on the screen.
- Create a text file results.txt
- Add the basic operation results to results.txt file.
- Run the script multiple times using different values.
 Saved under arithmetic
$FIRST_NUM = Read-Host   #ask for number input
$SECOND_NUM = Read-Host #ask for second number

$SUM = [int]$FIRST_NUM + [int]$SECOND_NUM #
$SUB = [int]$FIRST_NUM - [int]$SECOND_NUM
$MUL = [int]$FIRST_NUM * [int]$SECOND_NUM
$DIV = [int]$FIRST_NUM / [int]$SECOND_NUM

Write-Host $SUM
Write-Host $SUB
Write-Host $MUL
Write-Host $DIV

New-Item C:\Users\D.P\Desktop\Results.txt
Set-Content C:\Users\D.P\Desktop\Results.txt $SUM
Add-Content C:\Users\D.P\Desktop\Results.txt $SUB
Add-Content C:\Users\D.P\Desktop\Results.txt $MUL
Add-Content C:\Users\D.P\Desktop\Results.txt $DIV

Get-ExecutionPolicy
The result should be one of the following values: Value Description Restricted No scripts will be executed. This is the default setting in Windows AllSigned You can run scripts signed by a trusted developer. With the help of this setting, a script will ask for confirmation that you want to run it before executing RemoteSigned You can run your own scripts or scripts signed by a trusted developer Unrestricted You can run any script you want. This Option should NOT be used unless it is for testing purposes and for limited time To run a PowerShell script, we can change the Execution-Policy using this command:
Set-ExecutionPolicy RemoteSigned
A confirmation message will be displayed, we should enter Y to confirm our choice. We can write PowerShell scripts in any editor, such as: notepad. PowerShell comes with its own editor, PowerShell Integrated Scripting Environment (PowerShell ISE). It supports writing and testing scripts in addition to running PowerShell commands in its console pane.

DIFFERENCE BTWEEN SINGLE AND DOUBLE QUOTES

Single quotes cannot be changed
Double quotes can be changed to a new variable inside

$FIRST_NUM = 3
$SECOND_NUM = 5
$SUM = $FIRST_NUM + $SECOND_NUM

Write-Host ‘$SUM = $FIRST_NUM + $SECOND_NUM’
$SUM = $FIRST_NUM + $SECOND_NUM

Write-Host “$SUM = $FIRST_NUM + $SECOND_NUM”
8 = 3 + 5
THESE ARE COMPARISON OPERSTORS FOR POWERSHELL
Long description
Comparison operators let you compare values or finding values that match specified patterns. PowerShell includes the following comparison operators:
LONG DESCRIPTION
Type	Operator	Comparison test
Equality	-eq	equals
	-ne	not equals
	-gt	greater than
	-ge	greater than or equal
	-lt	less than
	-le	less than or equal
Matching	-like	string matches wildcard pattern
	-notlike	string does not match wildcard pattern
	-match	string matches regex pattern
	-notmatch	string does not match regex pattern
Replacement	-replace	replaces strings matching a regex pattern
Containment	-contains	collection contains a value
	-notcontains	collection does not contain a value
	-in	value is in a collection
	-notin	value is not in a collection
Type	-is	both objects are the same type
	-isnot	the objects are not the same type
