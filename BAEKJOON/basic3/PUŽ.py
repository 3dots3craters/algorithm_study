import math

A, B, V = map(int, input().split())

print(math.ceil((V - B)/(A - B)))

# V <= A * n - B * (n - 1)
# V <= n * (A - B) + B
# n = math.ceil((V - B)/(A - B))
