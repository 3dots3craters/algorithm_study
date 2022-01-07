A, B, C = map(int, [input() for _ in range(3)])
if A + B + C != 180:
    print("Error")
else:
    if A == B and B == C:
        print("Equilateral")
    elif A == B or B == C or C == A:
        print("Isosceles")
    else:
        print("Scalene")

# 참고자료: https: // dojang.io/mod/page/view.php?id = 2192
# 파이썬에는 and, or , not 논리 연산자가 있다.

# 참고자료: https://dojang.io/mod/page/view.php?id=2461
# 파이썬 연산자 우선순위 표

# 출처: https://www.acmicpc.net/source/37190357
# a = int(input())
# b = int(input())
# c = int(input())
#
# if a == b == c == 60:
#     print("Equilateral")
# elif a+b+c == 180:
#     if a == b or b == c or a == c:
#         print("Isosceles")
#     else:
#         print("Scalene")
# else:
#     print("Error")
