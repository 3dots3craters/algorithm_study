time = int(input())
A = time // 300
time = time % 300
B = time // 60
time = time % 60
C = time // 10
time = time % 10
if time:
    print(-1)
else:
    print(A, B, C)
