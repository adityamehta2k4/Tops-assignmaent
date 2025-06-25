# Q9. Write python program that swap two number with temp variable and without temp variable.
#Answer:

#with temp variable

a=int(input("Enter first number(a): "))
b=int(input("Enter Second number(b): "))

print("Before swapping:")
print("a=",a)
print("b=",b)

temp = a
a = b
b = temp

print("After swapping (using temp variable): ")
print("a=",a)
print("b=",b)

# Without temp variable

c=int(input("Enter first number(c): "))
d=int(input("Enter Second number(d): "))

print("Before swapping:")
print("c=",c)
print("d=",d)

c,d=d,c

print("After swapping(without temp wariable): ")
print("c=",c)
print("d=",d)

