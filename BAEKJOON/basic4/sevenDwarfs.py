# 풀이
# 아홉 명의 난쟁이 중 두 명은 주인공이 아니다.


Dwarfs = list(map(int, [input() for _ in range(9)]))

# 아홉 난쟁이의 키를 모두 더한 값을 구한다.
Heights = sum(Dwarfs)

Fake1, Fake2, off = 0, 0, False

# 키의 합이 100이 되는 조합을 찾아 가짜 난쟁이 두 명을 가려낸다.
for i in range(9):
    for j in range(i+1, 9, 1):
        if Heights - Dwarfs[i] - Dwarfs[j] == 100:
            Fake1 = Dwarfs[i]
            Fake2 = Dwarfs[j]
            off = True
            break
    if off:
        break

# 가짜 난쟁이 두 명을 리스트에서 제거한다.
Dwarfs.remove(Fake1)
Dwarfs.remove(Fake2)

# 진짜 난쟁이만 남은 리스트를 정렬한다.
Dwarfs.sort()

for k in range(7):
    print(Dwarfs[k])


# 출처: https://www.acmicpc.net/source/37930282
# from itertools import combinations
#
# arr = [int(input()) for _ in range(9)]
# C = combinations(arr, 7)
#
# for c in C:
#     if sum(c) == 100:
#         c = sorted(list(c))
#         for i in c:
#             print(i)
#         break
