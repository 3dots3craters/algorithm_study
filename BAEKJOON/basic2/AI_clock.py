H, M, S = map(int, input().split())
N = int(input())

sumS = S + N % 60
sumM = M + N // 60 + sumS // 60
newH = (H + sumM // 60) % 24
newM = sumM % 60
newS = sumS % 60

print(newH, newM, newS)
