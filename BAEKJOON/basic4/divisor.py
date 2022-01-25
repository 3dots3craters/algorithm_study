Len = int(input())
Divisors = list(map(int, input().split()))
Divisors.sort()
print(Divisors[0] * Divisors[Len - 1])

# 출처: https://www.acmicpc.net/source/38037285
# p=input
# p()
# a=list(map(int,p().split()))
# print(max(a)*min(a))
