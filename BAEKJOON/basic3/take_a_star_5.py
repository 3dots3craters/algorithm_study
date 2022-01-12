N = int(input())

for i in range(N):
    print(('*' * (2*i + 1)).center(2*N - 1).rstrip())
