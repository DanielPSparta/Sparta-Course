a = int(input("please enter a number: "))
b = int(input("please enter a number: "))
num1=float(a)
num2=float(b)

if num2 == 0:
    print("please enter another number that it not zero for the second number")
else:
    f = open("results.txt","w+")

    num3 = num1 +num2
    print("{} + {} = {}".format(num1,num2,num3))
    f.write("{} + {} = {} \n".format(num1,num2,num3))

    num3 = num1 -num2
    print("{} - {} = {}".format(num1,num2,num3))
    f.write("{} + {} = {} \n".format(num1,num2,num3))

    num3 = num1 *num2
    print("{} * {} = {}".format(num1,num2,num3))
    f.write("{} + {} = {} \n".format(num1,num2,num3))

    num3 = num1 /num2
    print("{} / {} = {}".format(num1,num2,num3))
    f.write("{} + {} = {} \n".format(num1,num2,num3))

    f.close()
