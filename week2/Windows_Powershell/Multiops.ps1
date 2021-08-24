$RESPONCE = "n"

Do {
Write-Host "Enter first number:"
$FIRST_NUM = Read-Host
Write-Host "Enter second number:"
$SECOND_NUM = Read-Host

if ($SECOND_NUM -eq 0) {
Write-Host "cannot divide bu zero please make sure the second number is not zero"

}
else {

$SUM = [int]$FIRST_NUM + [int]$SECOND_NUM
$SUB = [int]$FIRST_NUM - [int]$SECOND_NUM
$MUL = [int]$FIRST_NUM * [int]$SECOND_NUM
$DIV = [int]$FIRST_NUM / [int]$SECOND_NUM

Write-Host "Addition of two number is: $SUM"
Write-Host "Subtraction of two number is: $SUB"
Write-Host "Multiplication of two number is: $MUL"
Write-Host "Division of two number is: $DIV"

New-Item $HOME\Desktop\Results.txt
Set-Content $HOME\Desktop\Results.txt $SUM
Add-Content $HOME\Desktop\Results.txt $SUB
Add-Content $HOME\Desktop\Results.txt $MUL
Add-Content $HOME\Desktop\Results.txt $DIV

Write-Host "Results saved to your desktop as Result.txt"
}
Write-Host "Are you done? (y/n)"
$RESPONCE = Read-Host

}

Until($RESPONCE -eq "y")

Write-Host "Thank you, Goodbye"
