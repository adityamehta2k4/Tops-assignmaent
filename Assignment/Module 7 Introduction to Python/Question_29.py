# Q29.  Write a Python function to get the largest number, smallest num and sum of all from a list.
# Answer:

number = [5, 12, 7, 3, 20]

largest=number[0]
smallest=number[0]
total=0

for num in number:
    if num > largest:
        largest=num
    if num < smallest:
        smallest=num
    total +=0
    
print("Largest:", largest)
print("Smallest:", smallest)
print("Sum:", total)