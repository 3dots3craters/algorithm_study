minguk = sum(list(map(int, input().split())))
manse = sum(list(map(int, input().split())))
print(max(minguk, manse) if minguk != manse else minguk)

# 출처: https://www.acmicpc.net/source/37101046
# S = sum(list(map(int, input().split())))
# T = sum(list(map(int, input().split())))
# print(max(S, T))
