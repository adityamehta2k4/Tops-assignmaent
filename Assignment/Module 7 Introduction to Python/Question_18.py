# Q18.  Write a Python program to count occurrences of a substring in a string.
#Answer:

text=input("enter a string: ")
substring=input("enter a substring to count: ")

count = text.count(substring)

print("The substring appears",count,"time(s)in the string.")