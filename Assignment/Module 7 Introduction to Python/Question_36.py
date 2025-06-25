# Q36.  Write a Python function that takes a list and returns a new list with unique elements of the first list.
#Answer:

def unique_list(my_list):
    return list(set(my_list))

number=[15,25,45,74,65,35]
result=unique_list(number)

print(result)

