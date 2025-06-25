# Q39.  Write a Python program to find the second smallest number in a list.
#Answer: 

def second_smallest(numbers):
    numbers = list(set(numbers))
    numbers.sort()
    if len(numbers) >= 2:
        return numbers[1]
    else:
        return "Not enough unique numbers."

my_list = [40,100,17,21,19,91]
result = second_smallest(my_list)
print("Second smallest number is:",result)

