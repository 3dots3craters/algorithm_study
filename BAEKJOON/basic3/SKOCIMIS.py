A, B, C = map(int, input().split())

counts = []


def jump(posA, posB, posC, cnt):
    print("posA: ", posA, "posB: ", posB, "posC: ", posC)
    for i in range(posA + 1, posB, 1):
        cnt += 1
        jump(posA, i, posB, cnt)
        cnt -= 1
    for j in range(posB + 1, posC, 1):
        cnt += 1
        jump(posB, j, posC, cnt)
        cnt -= 1
    counts.append(cnt)
    print("-----------------")


jump(A, B, C, 0)
print(max(counts))
