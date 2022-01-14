M, X, Y = -1, 0, 0

for i in range(9):
    line = list(map(int, input().split()))
    if max(line) > M:
        M = max(line)
        X = line.index(M) + 1
        Y = i + 1

print(M)
print(Y, X)
