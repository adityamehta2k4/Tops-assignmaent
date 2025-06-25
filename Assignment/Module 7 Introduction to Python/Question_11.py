#Q 11.Write a Python program to test whether a passed letter is a vowel or not.
#Answer:

letter=input("Enter a single letter: ")
letter.lower()

if letter in ['a','e','i','o','u']:
    print("The letter is vowel.")
else:
    print("The letter is not a vowel.")
    
    