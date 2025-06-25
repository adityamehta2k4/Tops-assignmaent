# Q24. Write a Python function to insert a string in the middle of a string.
# Answer:

state_name=input("Enter the state name: ")
city_name=input("Enter the city name: ")

mid=len(state_name)//2

result = state_name[:mid] + city_name + state_name[mid:]

print("Result:",result)

