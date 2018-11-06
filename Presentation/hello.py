"""
Hello World program, Good Old Times style.
"""
# Small memory, with 1024 positions.
data = [0] * 1024

# Add words to memory
data[0:5] = 'Hello '
data[6:11] = 'World!'

# Print message
data[12] = 0 # index
while(data[12] < 11):
    print(data[data[12]], end="")   # print char
    data[12] += 1 # index++
print() # print \n