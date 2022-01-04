arr = list(map(lambda x: int(x) ** 2, input().split()))

print(sum(arr) % 10)

# 파이썬에서는 제곱을 **을 써 표현한다.
# 2**3은 2의 세제곱을 의미한다.
# 참고자료: https://blockdmask.tistory.com/377

# 람다(lambda)는 함수를 딱 한 줄로만 만들 수 있게 해준다.
# 참고자료: https://wikidocs.net/64

# sum의 첫 번째 매개변수는 iterable하고 숫자데이터가 들어간 객체, 변수이며 두 번째 매개변수는 처음으로 더해줄 숫자값이다.
# 참고자료: https://blockdmask.tistory.com/413

# arr = list(map(int, input().split()))
# print(sum(list(map(lambda x : x**2,arr)))%10)
