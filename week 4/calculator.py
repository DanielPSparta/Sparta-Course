def user():
    num1 = float(input("please input the first number: "))
    num2 = float(input("please input the second number: "))
    return num1, num2

def check(num1,num2):
    print("the addition of the number: ",sum(num1,num2))
    f.write("{} + {} = {} \n".format(num1,num2,sum(num1,num2)))

    print("the subtraction of the number: ",minus(num1,num2))
    f.write("{} - {} = {} \n".format(num1,num2,minus(num1,num2)))

    print("the multiplication of the number: ",times(num1,num2))
    f.write("{} * {} = {} \n".format(num1,num2,times(num1,num2)))

    print("the division of the number: ",divide(num1,num2))
    f.write("{} / {} = {} \n".format(num1,num2,divide(num1,num2)))

    f.write("---------------------------------------------------------------\n")

#operators
sum = lambda num1, num2 : num1+num2
minus = lambda num1, num2 : num1-num2
times = lambda num1, num2 : num1*num2

#division needs exception handling

def divide(num1,num2):
    try:
        num3 = num1 /num2
    except ZeroDivisionError:
        print(ZeroDivisionError)
        return print("Not able to divide by zero")

    return num3
#set up token for while loop

answer = "n"

#open up a file to write to
f = open("results.txt","w+")

#runs the code
while answer != "y":

    number1 ,number2 = user()
    check(number1,number2)


    answer = input("Are you done? (y/n) \n")
#closes the file to write to
f.close()
