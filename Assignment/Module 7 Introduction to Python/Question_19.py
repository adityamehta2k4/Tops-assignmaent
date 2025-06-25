# Q19. Write a Python program to count the occurrences of each word in a given sentence.
#Answer:


sentance=input("enter a sentence: ")

words=sentance.split()

for word in words:
    count=word.count(word)
    print(word,":",count)