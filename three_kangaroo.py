# -*- coding: utf-8 -*-
# 놀고 있는 캥거루 세 마리...
# 사막은 일차원...
# 문제 이해가 안 되는데...

# 바깥쪽이라는 게 무얼 기준으로 바깥쪽인지 헷갈렸는데 
# 질문 검색을 해보고 
# 세 마리가 나란히 있을 경우 첫번쨰와 세번째 캥거루가 바깥쪽에 있다고 여기면 된다는 걸 파악했다.

# 2 3 5의 경우엔 5는 2와 3 사이의 정수가 없으므로 이동할 수 없고, 2는 3과 5 사이에 4라는 정수가 있으므로 이동할 수 있다.

# 3 5 9의 경우, 
# 9가 3과 5 사이의 정수인 4로 이동해버리면 1번 움직이고 끝나버리지만, 
# 3이 5와 9 사이의 정수인 6, 7, 8 중 하나로 이동하면 그 이후에 한번 더 이동을 할 수 있다.
# 3 5 9 -> 5 6 9 인 경우 -> 5가 6과 9 사이의 정수로 이동하면 -> 6 7 9 -> 7 8 9


while(1):
	try:
		[first, second, third] = list(map(int, input().split()))
		flag = 1
		count = 0
		while (flag):
			if ((second - first) == 1) and ((third - second) == 1):
				flag = 0
			else:
				if (second - first) > (third - second):
					third = second
				else:
					first = second
				second = first + 1
				count = count + 1
		print(count)
	except EOFError:
		break

# 파이썬 파일 실행 명령어: python 파일명
# 그런데 주석으로 한글 친 것도 거슬려 하면서 에러메시지를 뱉는다.
# 참고문서: https://tom7930.tistory.com/57
# 파이썬 코드 최상단에 한글 인코딩을 명시해주면 된다. -> why?

# 파일 실행 후 입력값은 쌍따옴표로 싸서 입력해야 문법 에러가 안 뜬다.