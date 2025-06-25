#Q 14. Write a python program to sum of the first n positive integers.
#Answer:

num=int(input("Enter a positive number: "))

total=0

for i in range(1,num+1):
    total += 1
    
print("The sum of first",num,"positive number is:",total)
