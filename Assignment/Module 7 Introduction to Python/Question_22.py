# Q22. Write a Python function to reverses a string if its length is a multiple of 4.
#Answer:


name=input("enter a name: ")

if len(name) % 4 == 0:
    print("Result:", name[::-1])
else:
    print("Result:",name)
    