list = [0] * 5
for i in range(5):
    list[i] += int(input())
L, A, B, C, D = list
langDay = A // C + (1 if A % C > 0 else 0)
mathDay = B // D + (1 if B % D > 0 else 0)
print(L - max([langDay, mathDay]))


# 출처: https://www.acmicpc.net/source/37149135
# L, a, b, c, d = [int(input()) for _ in range(5)]
# if a % c == 0: put1 = a//c
# else: put1 = (a//c)+1
# if b % d == 0: put2 = b//d
# else: put2 = (b//d)+1
# print(L-max(put1, put2))

# 참고자료
# http://daplus.net/python-if-%EB%AC%B8%EC%97%90%EC%84%9C-%EC%B4%88%EA%B8%B0%ED%99%94-%EB%90%9C-%EB%B3%80%EC%88%98%EC%9D%98-%EB%B2%94%EC%9C%84%EB%8A%94-%EB%AC%B4%EC%97%87%EC%9E%85%EB%8B%88%EA%B9%8C/
# if문 안에서 초기화된 변수의 범위: 전역
