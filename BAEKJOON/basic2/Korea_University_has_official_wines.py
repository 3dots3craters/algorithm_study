C, K, P = map(int, input().split())
answer = 0

for y in range(C + 1):
    answer += K * y + P * (y ** 2)

print(answer)
