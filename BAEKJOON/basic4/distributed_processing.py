table = [[0, 0, 0, 0], [1, 1, 1, 1], [2, 4, 8, 6],
         [3, 9, 7, 1], [4, 6, 4, 6], [5, 5, 5, 5],
         [6, 6, 6, 6], [7, 9, 3, 1], [8, 4, 2, 6],
         [9, 1, 9, 1]]

T = int(input())

for _ in range(T):
    a, b = map(int, input().split())
    i = a % 10
    j = 3 if b % 4 == 0 else b % 4 - 1
    print(10 if table[i][j] == 0 else table[i][j])

# 출처: https: // www.acmicpc.net/source/38015148
# 출처: https://docs.python.org/3/library/functions.html?highlight=pow#pow
# count = int(input())
# ans = 0
#
# i = 0
#
# for i in range(count):
#
#     a, b = map(int, input().split())
#     ans = pow(a, b, 10)  # pow(base, -exp, mod)
#     if not ans:
#         print(ans + 10)
#     else:
#         print(ans)
