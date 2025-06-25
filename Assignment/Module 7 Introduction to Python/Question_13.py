# Q13. Write a Python program that will return true if the two given integer values are equal or their sum or difference is 5.
#Answer:
#Program to return True if

a=int(input("Enter first number: "))
b=int(input("Enter second number: "))

if a==b or (a+b==5) or (abs(a-b)==5):
    print("True")
else:
    print("False")

    