max = 0
total = 0
for i in range(4):
    DOWN, UP = map(int, input().split())
    total += UP - DOWN
    max = total if total > max else max

print(max)
