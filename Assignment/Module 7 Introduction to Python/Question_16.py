#Q 16. Write a Python program to count the number of characters (character frequency) in a string
#Answer:

text=input("Enter a name: ")

char_count= {}

for char in text:
    if char in char_count:
        char_count[char] += 1
    else:
        char_count[char] = 1
        
print("Character frequencies:")
for char, count in char_count.items():
    print(char,":",count)
