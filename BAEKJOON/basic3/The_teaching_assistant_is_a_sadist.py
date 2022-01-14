N = int(input())
students = list(map(int, input().split()))
count = 0
for i in range(N):
    if i + 1 != students[i]:
        count += 1

print(count)
