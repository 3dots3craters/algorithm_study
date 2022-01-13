N = int(input())
A = list(map(int, input().split()))
B, C = map(int, input().split())

count = N
for i in range(N):
    if A[i] > B:
        count += (A[i] - B) // C
        if (A[i] - B) % C:
            count += 1
print(count)
