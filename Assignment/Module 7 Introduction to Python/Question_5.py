# Q5.Write a Python program to get the Factorial number of given numbers.
# Answer:

num=int(input("Enter a number : "))
factorial = 1

if num < 0:
    print("Factorial is not defined for negative numbers")
elif num == 0:
    print("The factorial of 0 is 1")
else:
    for i in range(1,num+1):
        factorial *=1
    print("he factorial of", num, "is", factorial)
    
    