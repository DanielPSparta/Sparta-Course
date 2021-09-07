
def user():
    num = float(input("please input a number:"))
    return num

def check(num1,num2):
    if float(num2) == 0:
        print("please enter a non zero number")
    else:
        print("the addition of the number: ",sum(num1,num2))
        f.write("{} + {} = {} \n".format(num1,num2,sum(num1,num2)))
        print("the subtraction of the number: ",minus(num1,num2))
        f.write("{} - {} = {} \n".format(num1,num2,minus(num1,num2)))
        print("the multiplication of the number: ",times(num1,num2))
        f.write("{} * {} = {} \n".format(num1,num2,times(num1,num2)))
        print("the division of the number: ",divide(num1,num2))
        f.write("{} / {} = {} \n".format(num1,num2,divide(num1,num2)))
        f.write("---------------------------------------------------------------\n")

def sum(num1,num2):
    num3 = num1 +num2
    return num3


def minus(num1,num2):
    num3 = num1 -num2
    return num3

def times(num1,num2):
    num3 = num1 *num2
    return num3

def divide(num1,num2):
    num3 = num1 /num2
    return num3


answer = "n"
f = open("results.txt","w+")
while answer != "y":

    number1 = user()
    number2 = user()
    check(number1,number2)


    answer = input("Are you done? (y/n) \n")
f.close()
