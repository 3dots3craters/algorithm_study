total = 0

for i in range(4):
    total += int(input())

min = total // 60
sec = total % 60

print(min, sec)
