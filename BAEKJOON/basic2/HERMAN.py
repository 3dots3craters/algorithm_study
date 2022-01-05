import math

R = int(input())
squared = R ** 2

# 유클리드 기하학에서 원의 넓이 : R의 제곱 * 파이

print(squared * math.pi)

# 택시 기하학에서 원의 넓이 : R의 제곱 * 2
print(squared * 2)

# 참고자료
# https://generalbulldog.tistory.com/22
# ([Python] math.pi 대신 pi로 원주율(π) 사용하기)
# https://blockdmask.tistory.com/377
# ([python] 파이썬 제곱, 나머지 구하기)
