# Q21.Write a Python program to add 'in' at the end of a given string (length should be at least 3). If the given string already ends with 'ing' then add 'ly' instead if the string length of the given string is less than 3, leave it unchanged. 
# Answer:

#ing , ly

name=input("Enter a name: ")

if len(name) < 3:
    result = name
elif name.endswith("ing"):
    result = name + "ly"
else:
    result=name + "ing"

print("modified name:",result)
