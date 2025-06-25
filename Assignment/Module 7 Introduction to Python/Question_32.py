# Q32. Write a Python program to remove duplicates from a list.
#Answer:Remove duplicate

# 1. city 

city1=["Mumbai","Akola","Goa","Surat","Mumbaui","Surat","Rajkot","Goa","Akola"]

city2=list(set(city1))
print("city2:",city2)

# 2.name 

name1=["Aditya","Yash","Aditya","Ravi","Himanshu","Yash","Nishant"]

name2=list(set(name1))
print("name2:",name2)

# 3. Number

num1=[25,45,85,90,25,45,95,74,85,90,43,74,52,65,]

num2=list(set(num1))
print("num2:",num2)