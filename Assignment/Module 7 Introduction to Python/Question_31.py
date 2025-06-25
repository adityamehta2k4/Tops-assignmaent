# Q31.  Write a Python program to count the number of strings where the string  length is 2 or more and the first and last character are same from a given list of strings. 
# Answer:

city_name = ["Ahmedabad","Surat","Rajkot","Diu","GN","anna"]

count = 0
for city in city_name:
    if len(city) >= 2 and city[0] == city[-1]:
        count += 1

print("Number of cities with same first and last Character:", count)



