from math import *

D, H, W = map(int, input().split())
w = sqrt(pow(D, 2)/(pow(H/W, 2) + 1))
h = H / W * w
print(floor(h), floor(w))

# 구상
# 높이가 h, 너비가 w 일 때
# h/w = H/W
# h**2 + w**2 = D**2
# h = H/W*w
# w**2 = D**2/(H/W**2 + 1)
# w = sqrt(pow(D, 2)/(pow(H/W, 2) + 1))

# "일반적으로 파이썬 개발자들은 math 라이브러리를 다루는 것에 능숙하며,
# 유지보수성이나 가독성 측면에서 sqrt 함수를 사용하는 것이 기본적인 방법보다 유리하기에
# Math 라이브러리 방식을 더 많이 사용한다."
# 출처: https://needneo.tistory.com/77
