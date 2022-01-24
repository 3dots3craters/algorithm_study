count = 0

for i in range(8):
    Line = input()
    for j in range(8):
        if i % 2 == j % 2 and Line[j] == 'F':
            count += 1

print(count)
