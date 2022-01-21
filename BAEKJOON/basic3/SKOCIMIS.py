A, B, C = map(int, input().split())
print((B - A - 1) if (B - A - 1) > (C - B - 1) else (C - B - 1))
