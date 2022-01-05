day = int(input())
cars = list(map(int, input().split()))
count = 0

for car in cars:
    if car == day:
        count += 1

print(count)


# a = input()
# car = input()
# print(car)
# print(car.count(a)) //count 메서드는 주어진 문자열 car에서 변수 a의 값이 등장한 횟수를 반환한다.

# 참고자료
# https://www.programiz.com/python-programming/methods/string/count
