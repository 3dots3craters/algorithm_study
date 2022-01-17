

num = int(input())

count = 0

# A + B + C = N
# A >= B + 2
# C = 2N (N >= 1)

for T in range(2, num, 2):
    sum = num - T
    # print("T: ", T, "sum: ", sum)
    for N in range(1, sum, 1):
        Y = sum - N
        if N > Y + 1 and Y > 0:
            # print("N: ", N, "T: ", T, "Y: ", Y)
            count += 1

print(count)

# 10
# (2, 7, 1), (2, 6, 2), (2, 5, 3), (4, 5, 1), (4, 4, 2)
