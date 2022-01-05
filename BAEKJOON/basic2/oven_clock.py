# 내 코드
originHour, originMin = map(int, input().split())
addMin = int(input())

sumMin = (originMin + addMin % 60)
newHour = (originHour + (addMin // 60) + (sumMin // 60)) % 24
newMin = sumMin % 60

print(newHour, newMin)
# 결과: 메모리 30864KB 시간	72ms


# 출처: https://www.acmicpc.net/source/37069686
# H, M = map(int, input().split())
# timer = int(input())
#
# H += timer // 60
# M += timer % 60
#
# if M >= 60:
#     H += 1
#     M -= 60
# if H >= 24:
#     H -= 24
#
# print(H,M)
# 결과: 메모리 29200KB 시간 68ms
# 나눗셈 연산을 더 적게 하고, 사용한 변수의 개수도 더 적다.
