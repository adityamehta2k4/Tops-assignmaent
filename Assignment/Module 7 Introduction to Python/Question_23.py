# Q23.  Write a Python program to get a string made of the first 2 and the last 2 chars from a given a string. If the string length is less than 2, return instead of the empty string.
#Answer:

name=input("enter a name: ")

if len(name) < 2:
    result=""
else:
    result=name[:2]+name[-2:]

print("Result:", result)