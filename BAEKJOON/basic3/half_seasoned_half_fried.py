
A, B, C, X, Y = map(int, input().split())

minVal = float('inf')
scope = [0, X, Y]

for i in range(3):
    half = scope[i]
    cal = (X - half if X > half else 0) * A + \
        (Y - half if Y > half else 0) * B + half * C * 2
    minVal = min(minVal, cal)

print(int(minVal))
