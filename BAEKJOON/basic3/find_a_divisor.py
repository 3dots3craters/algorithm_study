N, K = map(int, input().split())
count = 0

for num in range(1, N + 1, 1):
    if N % num == 0:
        count += 1
        if count == K:
            print(num)
            count = -1
            break

if count > 0:
    print(0)


# 출처: https://www.acmicpc.net/source/37519618
# https://www.acmicpc.net/problem/2501
# "N의 약수를 구할 때는, 1부터 N의 제곱근 까지의 수만 0으로 나누어 떨어지는지 확인하면 된다!"
#
# N, K = map(int, input().split())
#
# divisors = []
# for i in range(1, int(N ** (1 / 2)) + 1):
#     if N % i == 0:
#         divisors.append(i)
#         if i != (N // i):
#             divisors.append(N // i)
#
# # print(divisors)
# try:
#     print(list(sorted(divisors))[K - 1])
# except IndexError:
#     print(0)
