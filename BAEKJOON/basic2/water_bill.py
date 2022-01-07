inputs = [0] * 5
for i in range(5):
    inputs[i] += int(input())

A, B, C, D, P = inputs
extra = 0 if P <= C else (P - C) * D
print(min(A * P, B + extra))

# 출처: https://www.acmicpc.net/source/36917346
# A, B, C, D, P = map(int, [input() for _ in range(5)])
# print(min(A*P, B+(P-C)*D if (P-C) > 0 else B))
