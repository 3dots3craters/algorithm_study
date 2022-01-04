L, P = list(map(int, input().split()))
total = L * P
arr = list(map(lambda x: str(int(x) - total), input().split()))
string = ' '.join(arr)
print(string)


# join을 사용해 list를 문자열로 변환할 수 있다.
# 참고자료: https://eggwhite0.tistory.com/23

# str()를 사용하여 숫자를 문자로 변환할 수 있다.
# 참고자료: https://codechacha.com/ko/python-convert-integer-to-string/

# L, P = map(int, input().split())
# people = list(map(int, input().split()))
# result = P * L
# for i in people:
#     print(i - result, end=' ')
