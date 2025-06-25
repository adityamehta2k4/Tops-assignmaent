# Q34. Write a Python function that takes two lists and returns true if they have at least one common member. 
# Answer. checks if two lists have at least one common

# Not found

list1=["Ahmdabad","Surat","Rajkot"]
list2=["Udaipur","Jaipur","Ajmer"]

for city in list1:
    if city in list2:
        print("Common city found:",city)
        break

else:
    print("No commom city found")
    
    
# common found

list3=["Aditya","Neha","Diya","Yash","Jay"]
list4=["Diya","Nishant","Mahesh","Ayush"]

for name in list3:
    if name in list4:
        print("Common name found:", name)
        break
    
else:
    print("No common name found")

    