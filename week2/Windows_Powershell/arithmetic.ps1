$FIRST_NUM = Read-Host
$SECOND_NUM = Read-Host

$SUM = [int]$FIRST_NUM + [int]$SECOND_NUM
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
