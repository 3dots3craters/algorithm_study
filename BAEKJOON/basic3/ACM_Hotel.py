T = int(input())

for _ in range(T):
    H, W, N = map(int, input().split())
    X = str(N//H + 1) if N % H else str(N//H)
    Y = str(N % H) if N % H else str(H)
    if len(X) == 1:
        X = '0' + X
    print(Y+X)
