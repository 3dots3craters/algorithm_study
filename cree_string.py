# -*- coding: utf-8 -*-

# 크리 문자열: 길이가 짝수이고, 앞의 절반의 합과 뒤의 절반의 합이 같은 부분 문자열(빈문자열X)

# 조합을 해야겠는디?
# 예를 들어 S = "67896789" 인 경우, 
# 길이가 8인 것부터 7, 6, 5 순으로 연속된 부분 문자열을 다 만들어 보면서 내려가야겠다.
# 연속된 부분 문자열 조합을 모두 만든 후 그게 크리 문자열인지 판별하지 말고
# 연속된 부분 문자열 조합을 만드는 동시에 그게 크리 문자열인지 체크하자.
# 근데 이게 조합이라기엔 연속된 부분 문자열이라... 라이브러리에 있는 함수를 가져다 쓸 수 없을 것 같다.
# for문 돌려야 할 듯 ..

def sum(string):
	answer = 0
	for char in string:
		answer = answer + int(char)
	return answer	

while(1):
	try:
		string = input()
		strLen = len(string)
		maxLen = strLen if strLen % 2 == 0 else strLen - 1
		while maxLen > 1:
			halfLen = maxLen//2
			for i in range(0, strLen - maxLen + 1):
				prefix = string[i:i + halfLen]
				suffix = string[i + halfLen:i + maxLen]
				if sum(prefix) == sum(suffix):
					print(maxLen)
					maxLen = 0
					continue			
			maxLen = maxLen - 2
	except EOFError:
		break

# python 내장 함수인 len()을 이용하여 문자열의 길이를 구함

# 파이썬 삼항연산자 형식은 
# [true_value] if [condition] else [false_value]
# 위와 같다

# 주어진 문자열이 7글자일 때 길이 6인 부분 문자열을 구하려면
# 인덱스 0, 1에서만 헤아리기 시작하면 되니까 이게 for문 조건으로 쓰면
# for i in range(0, strLen - maxLen + 1)

# 파이썬은 문자열 자르기를 쉽게 할 수 있도록 해놓았다.
# 문자열[시작index : 끝index]
# 이를 통해 (시작 index)에서부터 (끝 index - 1)까지 문자열을 자를 수 있다.
# 참고문서: https://blockdmask.tistory.com/458

# string을 integer로 바꾸려면 int()함수를 이용하면 된다.
# 참고문서: https://codechacha.com/ko/python-convert-string-to-integer/

# 깔끔한 정수의 몫을 얻고 싶으면 정수 나눗셈을 사용하자.
# 참고문서: https://dojang.io/mod/page/view.php?id=2170