names = ['S', 'N', 'U']
maxEffect = 0
index = 0

for i in range(3):
    cost, weight = map(int, input().split())
    originCost = 10 * cost
    effect = weight * 10 / \
        (originCost - 500 if originCost >= 5000 else originCost)
    if maxEffect < effect:
        maxEffect = effect
        index = i

print(names[index])


# 출처: https://www.acmicpc.net/source/37580354
# import sys
# input = sys.stdin.readline
#
# snu = []
# for _ in range(3):
#     p, w = map(int, input().split())
#     p, w = p*10 - 500 if p*10 >= 5000 else p*10, w*10
#     snu.append(w/p)
# print('SNU'[snu.index(max(snu))])
