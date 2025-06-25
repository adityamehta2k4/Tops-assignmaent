# Q6. Write a Python program to print the Fibonacci series up to a given range.
# Answer:


n = int(input("Enter how many terms you want in Fibonacci series: "))

a = 0
b = 1

# Check for valid input
if n <= 0:
    print("Please enter a positive number.")
elif n == 1:
    print("Fibonacci series:")
    print(a)
else:
    print("Fibonacci series:")
    print(a, b, end=" ")  # Print first two terms
    for i in range(2, n):  # Start loop from 2 because first two are printed
        c = a + b
        print(c, end=" ")
        a = b
        b = c