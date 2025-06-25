# Q37.  Write a Python program to convert a list of characters into a string.
# Answer: 

def list_to_string(char_list):
    return''.join(char_list)

characters=['A','d','i','t','y','a']
output = list_to_string(characters)
print("The final string is:",output)