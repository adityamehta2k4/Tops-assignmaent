# Q35. Write a Python program to generate and print a list of first and last 5 elements where the values are square of numbers between 1 and 30. 
#Answer:

squares = []

for i in range(1, 31):
    squares.append(i * i)

print("First 5 squares:", squares[0:5])
print("Last 5 squaress:", squares[-5:])

